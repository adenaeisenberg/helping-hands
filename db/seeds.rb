User.create([
  { name: "Chaykie Levin", bio: "I graduated from high school a year ago and I love to volunteer while I'm in college.", dob: "September 3, 2019", phone_number: "929-098-3872", email: "chaykie@example.com" },
  { name: "Ruvi Turner", bio: "I love helping hands", dob: "September 3, 2019", phone_number: "929-903-3472", email: "ruvi@example.com" },
  { name: "Putchkie Leanord", bio: "I am super cute", dob: "September 3, 2019", phone_number: "929-098-9872", email: "rikki@example.com" },

])

Opportunity.create([
  { title: "Stock food pantries", description: "Hospital pantries need to be stocked", date: "June 4 2023", user_id: 1 },
  { title: "Garden local park", description: "Weed, seed, water with friends", date: "June 4 2023", user_id: 2 },
  { title: "Neighborhood Watch", description: "Drive your car around the neighborhood and keep a lookout for intruders", date: "June 4 2023", user_id: 3 },
])
