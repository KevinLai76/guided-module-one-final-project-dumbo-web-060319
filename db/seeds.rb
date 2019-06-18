Journey.destroy_all
Outcome.destroy_all

Journey.create(
  scenario: "The few days have been going well. That is until crewmember contracted dysentery - Space Dysentery - and it’s THE WORST. crewmember has been quarantined. You may find a cure on your journey, you may not. Do you:",
  week_number: "1",
  user_id: 1
)

Journey.create(
  scenario: "You get a distress signal from a nearby space station. You decide to check it out. It is abandoned except for one lone crew member. He seems a bit strange and rightfully so. He says he’s been alone for 3 months. Do you:",
  week_number: "1",
  user_id: 1
)

Journey.create(
  scenario: "You get a hail from another ship and it is not normal. Congrats, you’ve made first contact, but there’s good news and there’s bad news. The good news is they won’t destroy your ship. The bad news - you must hand over one of your crewmembers to not be destroyed. Do you:",
  week_number: "1",
  user_id: 1
)

Outcome.create(
  choice_prompt: "Send CREWMEMBER out the airlock. They always chewed with their mouth open.",
  consequence: "CREW has been sent on the airlock. CREW was secretly in love with CREW and joins them in space. You lose 2 crew.",
  crew_modifier: -2,
  choice: 1,
  journey_id: 1,
)

Outcome.create(
  choice_prompt: "Keep them on board and hope to find a cure in the upcoming days. CREW MEMBER is recently married and has a 3 month old named Arlo and a yorkie named Jax on Argon after all.",
  consequence: "You’ve spared CREWMEMBER. You are a good person. Everyone thinks so … except Space dysentery. The disease spreads and 3 crew members die. ",
  crew_modifier: -3,
  choice: 1,
  journey_id: 1,
)
