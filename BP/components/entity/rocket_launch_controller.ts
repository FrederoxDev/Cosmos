// This is a comment

export default defineComponent(({ name, template, schema }) => {
	name('cosmo:rocket_launch_controller')
	schema({
		properties: {
			planets: {
				type: 'array',
				items: {
					properties: {
						name: {
							type: 'string',
							description: 'The name of the planet'
						},
						tier: {
							type: 'number',
							description: 'The tier this planet is unlocked'
						}
					}
				}
			}
		}
	})

	template(({ planets }, { create }) => {
		planets.forEach((planet: any, i: number) => {
			var firstOp: string;
			var secondOp: string;

			const name = planet.name
			const tier = planet.tier

			if (name == "overworld") {
				firstOp = "!="
				secondOp = "=="
			} else {
				firstOp = "=="
				secondOp = "!="
			}

			// =============================================== //
			//                   Launch Events                 //
			// =============================================== //

			create({
				[`launch_${name}_controller`]: {
					"sequence": [
						{
							"trigger": `launch_${name}_err`,
							"filters": {
								"test": "has_biome_tag",
								"operator": `${firstOp}`,
								"value": "the_end"
							}
						},
						{
							"trigger": `launch_${name}`,
							"filters": {
								"test": "has_biome_tag",
								"operator": `${secondOp}`,
								"value": "the_end"
							}
						}
					]
				},

				[`launch_${name}_err`]: {
					"run_command": {
						"command": [
							"ride @p stop_riding",
							"event entity @s close_ui"
						]
					},
					"remove": {
						"component_groups": [
							"variant_ui"
						]
					}
				},

				[`launch_${name}`]: {
					"remove": {
						"component_groups": [
							"variant_ui"
						]
					},
					"add": {
						"component_groups": [
							`variant_${name}`
						]
					}
				},

				[`launched_${name}`]: {
					"run_command": {
						"command": [
							`execute @p ~ ~ ~ function ${name}/launch`,
							"tp @s ~ -2 ~"
						]
					}
				}
			},
				"minecraft:entity/events"
			)

			// =============================================== //
			//                   Variants                      //
			// =============================================== //

			create({
				[`variant_${name}`]: {
					"minecraft:variant": {
						"value": i + 2
					}
				}
			},
				"minecraft:entity/component_groups"
			)

			// =============================================== //
			//               Behaviour Animations              //
			// =============================================== //

			create({
				[`launch_${name}`]: `animation.launch_${name}`
			},
				"minecraft:entity/description/animations"
			)

			create({
				[`launch_${name}`]: `"q.has_rider && q.variant == ${i + 2}" && q.mark_variant >= ${tier}`
			},
				"minecraft:entity/description/scripts/animate"
			)
		})
	})
})