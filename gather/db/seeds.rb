# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

100.times {Topic.create(name: Faker::Lorem.word, summary: Faker::Lorem.paragraph(2, true, 4) ,min_age: Faker::Number.between(1, 40))}

Topic.create(name: "GERD", summary: "Gastroesophageal reflux disease, or GERD, is a very common disorder. Gastroesophageal refers to the stomach and the esophagus. Reflux refers to the back-flow of acidic or non-acidic stomach contents into the esophagus. There is no known single cause of GERD. It occurs when the esophageal defenses are overwhelmed by stomach contents that reflux into the esophagus.", min_age: 1 )

Topic.create(name: "Reflux", summary: "Reflux means that stomach acid and juices flow from the stomach back up into the tube that leads from the throat to the stomach (esophagus camera.gif). This causes heartburn. When you have heartburn that bothers you often, it is called gastroesophageal reflux disease, or GERD.", min_age: 7, max_age: 11)

Topic.create(name: "Anemia", summary: "Anemia is defined as a hemoglobin (Hb) level <12 g/dL in females and <14 g/dL in males, or as a Hb level <12.5 g/dL in adults. [1] [2] [3] It is the most common hematologic disorder seen in general medical practice. Risk factors include extremes of age, female gender, lactation, and pregnancy. The most common cause internationally is iron deficiency. [4] Anemia can cause significant morbidity if left untreated, and is often the presenting sign of a more serious underlying condition. [5] The rate at which anemia develops is often as important as the severity, as a rapid decline can overwhelm the compensatory mechanisms of the body.", min_age: 13)

Topic.create(name: "Constipation", summary: "Chronic constipation is a heterogeneous disorder, and patients commonly report one or more of the following symptoms: excessive straining, a sense of incomplete evacuation, failed or lengthy attempts to defecate, hard stools, and decreased stool frequency.  A detailed history and physical examination, including a digital rectal examination, is the first step in the evaluation of constipation.", min_age: 22, max_age: 25)

Topic.create(name: "Nut Allergies", summary: "PEANUT ALLERGY ACCOUNTS FOR THE MAJORITY of severe food-related allergic reactions. It tends to present early in life, and affected individuals generally do not outgrow it. In highly sensitized people, trace quantities can induce an allergic reaction. In this review, we will discuss the prevalence, clinical characteristics, diagnosis, natural history and management of peanut allergy.", min_age: 30)

Article.create(author: "health professional", email: "dr@company.com", body: "Article about something... The most severe consequence of iron depletion is iron deficiency anemia (IDA), and it is still considered the most common nutrition deficiency worldwide. Although the etiology of IDA is multifaceted, it generally results when the iron demands by the body are not met by iron absorption, regardless of the reason. Individuals with IDA have inadequate intake, impaired absorption or transport, physiologic losses associated with chronological or reproductive age, or chronic blood loss secondary to disease. In adults, IDA can result in a wide variety of adverse outcomes including diminished work or exercise capacity, impaired thermoregulation, immune dysfunction, GI disturbances, and neurocognitive impairment. In addition, IDA concomitant with chronic kidney disease or congestive heart failure can worsen the outcome of both conditions.", topic_id: 1)

Article.create(author: "health professional", email: "dr@company.com", body: "Article about something... The most severe consequence of iron depletion is iron deficiency anemia (IDA), and it is still considered the most common nutrition deficiency worldwide. Although the etiology of IDA is multifaceted, it generally results when the iron demands by the body are not met by iron absorption, regardless of the reason. Individuals with IDA have inadequate intake, impaired absorption or transport, physiologic losses associated with chronological or reproductive age, or chronic blood loss secondary to disease. In adults, IDA can result in a wide variety of adverse outcomes including diminished work or exercise capacity, impaired thermoregulation, immune dysfunction, GI disturbances, and neurocognitive impairment. In addition, IDA concomitant with chronic kidney disease or congestive heart failure can worsen the outcome of both conditions.", topic_id: 2)

Article.create(author: "health professional", email: "dr@company.com", body: "Article about something... The most severe consequence of iron depletion is iron deficiency anemia (IDA), and it is still considered the most common nutrition deficiency worldwide. Although the etiology of IDA is multifaceted, it generally results when the iron demands by the body are not met by iron absorption, regardless of the reason. Individuals with IDA have inadequate intake, impaired absorption or transport, physiologic losses associated with chronological or reproductive age, or chronic blood loss secondary to disease. In adults, IDA can result in a wide variety of adverse outcomes including diminished work or exercise capacity, impaired thermoregulation, immune dysfunction, GI disturbances, and neurocognitive impairment. In addition, IDA concomitant with chronic kidney disease or congestive heart failure can worsen the outcome of both conditions.", topic_id: 3)

Article.create(author: "health professional", email: "dr@company.com", body: "Article about something... The most severe consequence of iron depletion is iron deficiency anemia (IDA), and it is still considered the most common nutrition deficiency worldwide. Although the etiology of IDA is multifaceted, it generally results when the iron demands by the body are not met by iron absorption, regardless of the reason. Individuals with IDA have inadequate intake, impaired absorption or transport, physiologic losses associated with chronological or reproductive age, or chronic blood loss secondary to disease. In adults, IDA can result in a wide variety of adverse outcomes including diminished work or exercise capacity, impaired thermoregulation, immune dysfunction, GI disturbances, and neurocognitive impairment. In addition, IDA concomitant with chronic kidney disease or congestive heart failure can worsen the outcome of both conditions.", topic_id: 4)

Article.create(author: "health professional", email: "dr@company.com", body: "Article about something... The most severe consequence of iron depletion is iron deficiency anemia (IDA), and it is still considered the most common nutrition deficiency worldwide. Although the etiology of IDA is multifaceted, it generally results when the iron demands by the body are not met by iron absorption, regardless of the reason. Individuals with IDA have inadequate intake, impaired absorption or transport, physiologic losses associated with chronological or reproductive age, or chronic blood loss secondary to disease. In adults, IDA can result in a wide variety of adverse outcomes including diminished work or exercise capacity, impaired thermoregulation, immune dysfunction, GI disturbances, and neurocognitive impairment. In addition, IDA concomitant with chronic kidney disease or congestive heart failure can worsen the outcome of both conditions.", topic_id: 5)

Article.create(author: "health professional", email: "dr@company.com", body: "Article about something... The most severe consequence of iron depletion is iron deficiency anemia (IDA), and it is still considered the most common nutrition deficiency worldwide. Although the etiology of IDA is multifaceted, it generally results when the iron demands by the body are not met by iron absorption, regardless of the reason. Individuals with IDA have inadequate intake, impaired absorption or transport, physiologic losses associated with chronological or reproductive age, or chronic blood loss secondary to disease. In adults, IDA can result in a wide variety of adverse outcomes including diminished work or exercise capacity, impaired thermoregulation, immune dysfunction, GI disturbances, and neurocognitive impairment. In addition, IDA concomitant with chronic kidney disease or congestive heart failure can worsen the outcome of both conditions.", topic_id: 1)

Story.create(author: "parent", email: "parent@gmail.com", body: "My older daughter will turn 11 this summer. I realize that makes her basically old enough for sleep-away camp. While part of me (the hovering part) wants to grab her, hold her close and never let her go off on her own for one or two weeks (or, gasp, a month!), another part wants to shove her on the bus and happily wave her off.
Summer camp changed my life.", topic_id: 1)

Story.create(author: "parent", email: "parent@gmail.com", body: "My older daughter will turn 11 this summer. I realize that makes her basically old enough for sleep-away camp. While part of me (the hovering part) wants to grab her, hold her close and never let her go off on her own for one or two weeks (or, gasp, a month!), another part wants to shove her on the bus and happily wave her off.
Summer camp changed my life.", topic_id: 2)

Story.create(author: "parent", email: "parent@gmail.com", body: "My older daughter will turn 11 this summer. I realize that makes her basically old enough for sleep-away camp. While part of me (the hovering part) wants to grab her, hold her close and never let her go off on her own for one or two weeks (or, gasp, a month!), another part wants to shove her on the bus and happily wave her off.
Summer camp changed my life.", topic_id: 3)

Story.create(author: "parent", email: "parent@gmail.com", body: "My older daughter will turn 11 this summer. I realize that makes her basically old enough for sleep-away camp. While part of me (the hovering part) wants to grab her, hold her close and never let her go off on her own for one or two weeks (or, gasp, a month!), another part wants to shove her on the bus and happily wave her off.
Summer camp changed my life.", topic_id: 4)

Story.create(author: "parent", email: "parent@gmail.com", body: "My older daughter will turn 11 this summer. I realize that makes her basically old enough for sleep-away camp. While part of me (the hovering part) wants to grab her, hold her close and never let her go off on her own for one or two weeks (or, gasp, a month!), another part wants to shove her on the bus and happily wave her off.
Summer camp changed my life.", topic_id: 5)

Story.create(author: "parent", email: "parent@gmail.com", body: "My older daughter will turn 11 this summer. I realize that makes her basically old enough for sleep-away camp. While part of me (the hovering part) wants to grab her, hold her close and never let her go off on her own for one or two weeks (or, gasp, a month!), another part wants to shove her on the bus and happily wave her off.
Summer camp changed my life.", topic_id: 1)

Story.create(author: "parent", email: "parent@gmail.com", body: "My older daughter will turn 11 this summer. I realize that makes her basically old enough for sleep-away camp. While part of me (the hovering part) wants to grab her, hold her close and never let her go off on her own for one or two weeks (or, gasp, a month!), another part wants to shove her on the bus and happily wave her off.
Summer camp changed my life.", topic_id: 2)

Resource.create(url: "www.parent-resources.com", phone: "800-555-1212", email: "contact-us@parent-resources.com", address: "123 fake st., Springfield", zip_code: 98104, summary: "Parent Resources provides many resources for parents.  We're here to help!", topic_id: 1)

Resource.create(url: "www.parent-resources.com", phone: "800-555-1212", email: "contact-us@parent-resources.com", address: "123 fake st., Springfield", zip_code: 98104, summary: "Parent Resources provides many resources for parents.  We're here to help!", topic_id: 2)

Resource.create(url: "www.parent-resources.com", phone: "800-555-1212", email: "contact-us@parent-resources.com", address: "123 fake st., Springfield", zip_code: 98104, summary: "Parent Resources provides many resources for parents.  We're here to help!", topic_id: 3)

Resource.create(url: "www.parent-resources.com", phone: "800-555-1212", email: "contact-us@parent-resources.com", address: "123 fake st., Springfield", zip_code: 98104, summary: "Parent Resources provides many resources for parents.  We're here to help!", topic_id: 4)

Resource.create(url: "www.parent-resources.com", phone: "800-555-1212", email: "contact-us@parent-resources.com", address: "123 fake st., Springfield", zip_code: 98104, summary: "Parent Resources provides many resources for parents.  We're here to help!", topic_id: 5)

Resource.create(url: "www.parent-resources.com", phone: "800-555-1212", email: "contact-us@parent-resources.com", address: "123 fake st., Springfield", zip_code: 98104, summary: "Parent Resources provides many resources for parents.  We're here to help!", topic_id: 1)

Resource.create(url: "www.parent-resources.com", phone: "800-555-1212", email: "contact-us@parent-resources.com", address: "123 fake st., Springfield", zip_code: 98104, summary: "Parent Resources provides many resources for parents.  We're here to help!", topic_id: 2)

Resource.create(url: "www.parent-resources.com", phone: "800-555-1212", email: "contact-us@parent-resources.com", address: "123 fake st., Springfield", zip_code: 98104, summary: "Parent Resources provides many resources for parents.  We're here to help!", topic_id: 3)

Resource.create(url: "www.parent-resources.com", phone: "800-555-1212", email: "contact-us@parent-resources.com", address: "123 fake st., Springfield", zip_code: 98104, summary: "Parent Resources provides many resources for parents.  We're here to help!", topic_id: 4)

Resource.create(url: "www.parent-resources.com", phone: "800-555-1212", email: "contact-us@parent-resources.com", address: "123 fake st., Springfield", zip_code: 98104, summary: "Parent Resources provides many resources for parents.  We're here to help!", topic_id: 5)
