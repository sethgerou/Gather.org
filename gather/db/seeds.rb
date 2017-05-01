# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Topic.create(name: "GERD", summary: "Gastroesophageal reflux disease, or GERD, is a very common disorder. Gastroesophageal refers to the stomach and the esophagus. Reflux refers to the back-flow of acidic or non-acidic stomach contents into the esophagus. There is no known single cause of GERD. It occurs when the esophageal defenses are overwhelmed by stomach contents that reflux into the esophagus.", min_age: 1 )

Topic.create(name: "Reflux", summary: "Reflux means that stomach acid and juices flow from the stomach back up into the tube that leads from the throat to the stomach (esophagus camera.gif). This causes heartburn. When you have heartburn that bothers you often, it is called gastroesophageal reflux disease, or GERD.", min_age: 0, max_age: 3)

Topic.create(name: "Anemia", summary: "Anemia is defined as a hemoglobin (Hb) level <12 g/dL in females and <14 g/dL in males, or as a Hb level <12.5 g/dL in adults. [1] [2] [3] It is the most common hematologic disorder seen in general medical practice. Risk factors include extremes of age, female gender, lactation, and pregnancy. The most common cause internationally is iron deficiency. [4] Anemia can cause significant morbidity if left untreated, and is often the presenting sign of a more serious underlying condition. [5] The rate at which anemia develops is often as important as the severity, as a rapid decline can overwhelm the compensatory mechanisms of the body.", min_age: 2)

Topic.create(name: "Constipation", summary: "Chronic constipation is a heterogeneous disorder, and patients commonly report one or more of the following symptoms: excessive straining, a sense of incomplete evacuation, failed or lengthy attempts to defecate, hard stools, and decreased stool frequency.  A detailed history and physical examination, including a digital rectal examination, is the first step in the evaluation of constipation.", min_age: 1, max_age: 5)

Topic.create(name: "Nut Allergies", summary: "PEANUT ALLERGY ACCOUNTS FOR THE MAJORITY of severe food-related allergic reactions. It tends to present early in life, and affected individuals generally do not outgrow it. In highly sensitized people, trace quantities can induce an allergic reaction. In this review, we will discuss the prevalence, clinical characteristics, diagnosis, natural history and management of peanut allergy.", min_age: 1)
