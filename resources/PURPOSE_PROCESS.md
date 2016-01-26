# Table of Contents

1. [Introduction](#introduction)
    * [Welcome to the Grand Experiment](#welcome-to-the-grand-experiment)
    * [Nashville Software School](#nashville-software-school)
1. [The Assumptions](#assumptions)
    * [Non-traditional structure](#assumption-1-non-traditional-structure)
    * [Elaboration](#assumption-2-elaboration)
    * [Mastery Learning](#assumption-3-mastery-learning)
    * [Cooperative Learning](#assumption-4-cooperative-learning)
1. [The Process](#the-process)
    * [Lecture and Live Coding](#lecture-live-coding)
    * [Exercises](#exercises)
    * [Assessment](#assessment)
    * [Challenges](#challenges)
    * [Group Projects](#group-projects)
1. [Milestones](#milestones)
    * [Foundations](#challenges)
    * [The Static Web](#challenges)
    * [Single Page Applications](#challenges)
    * [Modern JavaScript Developer](#challenges)
    * [Rich Browser Applications](#challenges)
    * [Capstone Project](#capstone-project)
1. Utilizing Modern Technology in Education
1. [Glossary](#glossary)
    * [Mastery Learning](#mastery-learning)
    * [Formative Assessments](#formative-assessments)
    * [Rich Browser Applications](#challenges)
    

<a id="introduction"></a>
# Introduction

<a id="introduction"></a>
## Welcome to the Grand Experiment

I'm Steve Brownlee, Lead Instructor at [Nashville Software School](http://www.nashvillesoftwareschool.com/), and what you are about to read is a *Grand Experiment* in adult software education.

This article weaves together results from empirical educational studies, ideas from thought leaders, and my own observations in the classroom. My goal is to provide a solid framework for the most effective way to teach the foundations of software development to adult learners. 

As I write this, vocational schools dedicated to teaching the skill of software development is a 3.5 year old industry.

Meaning, we're still figuring this stuff out.

Since NSS is a vocational school, focused solely on teaching adults, I've been scouring the web, and reading books about [andragogy](http://www.instructionaldesign.org/theories/andragogy.html), which is the theory of adult learning. I want to ensure that the way our courses are set up provide the most efficient environment for adult learners.

As I was reading Salman Khan's [The One World Schoolhouse](http://www.amazon.com/The-One-World-Schoolhouse-Reimagined/dp/1455508381), I learned about the concept of Mastery Learning. I then delved into learning all I could about that, and what immediately emerged is that mastery learning and andragogy are complementary. They both focus on self-directed learning, and education through practical application instead of memorization of content.

As I continued to read about both topics, I came to the conclusion that they are both describing the same thing: effective teaching strategies.

This article touches on some of the terms and philosophies that inspired how we teach, but they are not the central point. I may write an article later those points, but I am directing this article towards the other instructors out there for coding academies who might be looking for alternatives to teaching software development.

As I have talked with instructors at others schools, and previous instructors at NSS, I quickly notice that the focus is heavy - and sometimes only - on learning the skill of writing software. Makes sense, right? It's a coding school, so we teach coding. There's also **so much** to teach, especially in the browser libraries. New techniques and tools are being introduced at a blistering pace, and what was hot last year can quickly be displaced and delegated to the dustbin of history.

The pressure is on, then, to remain on point and do this.

![Teach all the things](http://www.stevebrownlee.com/content/images/2016/01/teach-things-meme.jpg)

I'm taking a different approach. Like every other endeavor of human knowledge, the foundations need to be taught before advanced topics. 

* Algebra before calculus.
* Aerodynamics before rocket design.
* Rhyme before poetry.

If someone has a rock solid comprehension of the skills and theory of algebra, then topics such as geometry, statistics, discrete mathematics and calculus become obvious and natural. Unfortunately, few people attain a true, 100% level of comprehension of algebra.

The same concept applies to software development. I need to give students a solid understanding of the foundational building blocks of modern coding. Once this happens, understanding web components, promises, generators, React, cherry picking, and microservice architectures become natural and obvious. It's a tall order, but I firmly believe that it is achievable in 6 months, the length of our program.

The building blocks are more than just variables, conditions, and loops. Students need to comprehend how using git and Github make them better teammates. Students must understand that their job is to solve business problems, and how to effectively communicate with other roles in a company. Students must know that designing a solution is far more important and complex than coding it. 

Having 25 years experience working on software teams has shown me what works, what doesn't, and how the lack of a solid foundation can significantly hinder a person's effectiveness on a team.

<a id="introduction"></a>
### Nashville Software School

[Nashville Software School](http://www.nashvillesoftwareschool.com/) is the first non-profit coding school in the United States. Several others have since opened their doors, but NSS was the trail blazer, and that's one of the main reason I decided to work here. For those of you who might wonder what the basic tenets of a non-profit organization are, here's a quick list.

+ A non-profit's mission is to undertake activities whose goal is **not primarily for profit**. Many people make the mistake of assuming the goal is to not make a profit. We need to be profitable in order to continue with our mission.
+ No person owns shares of the corporation or interests in its property.
+ The property and income of the non-profit corporation must never be distributed to any owners but are recycled back into the non-profit corporation's public benefit mission and activities.

So while we make sure that we are a profitable organization, it's not the *whole point* of the organization. There was a time, around mid-2014, when I started to consider teaching at a code academy full time. When I evaluated all the schools that were out there, I felt uninspired. They were all for-profit, which, when dealing with the education of students, doesn't feel right because the current mindset of for-profit companies is that their sole purpose is to provide a financial return to investors and shareholders.

To me, that means that the students are simply customers buying a product, which, in turn, is priced as high as the market can sustain. In order to maximize profit, the product has to be produced at the smallest cost possible.

See the problem?

I wanted an organization whose sole purpose was to invest in the education of students, and being a cash-flow positive organization was a natural byproduct of being extremely good at education. I wanted a non-profit. Luckily, right in my own city, there was Nashville Software School.

<a id="assumptions"></a>
# Assumptions

Through my reading and experience so far, here are some assumptions that I've developed. These are non-static, and will evolve over time. 

<a id="assumption-1-non-traditional-structure"></a>
## Assumption 1. Non-traditional structure

If the goal is to maximize the learning of each student, the traditional education processes that we all grew up with does not work. Political and organizational inertia prevents it from changing, even in the face of overwhelming evidence of its lack of effectiveness.

<a id="assumption-2-elaboration"></a>
## Assumption 2. Elaboration

Elaboration is absolutely critical. In an educational context, elaboration means that each concept must build upon a previous one, and students must be able to see that connection when they learn each topic.

<a id="assumption-3-mastery-learning"></a>
## Assumption 3. Mastery Learning

[Mastery learning](#mastery-learning) has demonstrated the ability to provide a more successful environment for learning than our current, dominant system of forcing students into age-based classrooms, and time-based curriculum where students move into new subjects without having mastered the current one.

Since age is not a concern, my most pressing concern is breaking away from the time-based curriculum.

<a id="assumption-4-cooperative-learning"></a>
## Assumption 4. Cooperative Learning

After teaching five cohorts of students, the one thing that has emerged as the greatest contributor to their ability to grasp concepts is cooperative learning. During their six months at NSS, students take part in numerous group projects to solve business problems by building applications.

In fact, I'm constantly striving to find ways to increase the number, and variety, of group projects for them to work on. It is that effective.

<a id="the-process"></a>
# The Process

![Nashville Software School Mastery Instructional Process](/content/images/2015/12/nss_mastery_learning_process.png)

<a id="lecture-live-coding"></a>
## Lecture + Live Coding
Classroom time will be for minimal lecture, usually 10-15 minutes of live coding and discussion for each concept on, what I call, The Golden Path (_see section 3 below_). Students can ask questions, have me repeat anything that wasn't clear and see how the code is written. The videos that I'm producing for students will further cover the basic concepts and be a straightforward, spartan approach to the corresponding code.

<a id="exercises"></a>
## Exercises
Then, the exercises take those core concepts and provide the affordance for students to strengthen their ability to remember the code, and enhance their understanding by using their creativity to apply it. My goal is to have, at the very least, 5 increasingly challenging exercises for each main branch concept.

<a id="assessment"></a>
## Assessment
Once the students feel they have obtained adequate comprehension of the concept (not memorization of syntax), they can take the quiz. The quiz itself is complex, and requires a creative application of the concept. It's not meant to regurgitate facts, or use short-term memorization on simplistic solutions.

The quiz then takes on two main purposes.

1. Encourage students to use their analytical and creative intelligence to solve a more complex problem.
1. Understand how this concept elaborates upon previous skills and knowledge. 

Elaboration is a critical part of this process. Each concept must build upon previous concepts, and students must be shown how they connect. Also, each of the exercises and quizzes are comprehensive, meaning that it will require the student so use **all** of the skills that have been learned to that point.

<a id="challenges"></a>
## Challenges

Once a student submits a quiz, and the instructor feels that it was completed without any further opportunities for comprehension, the student can then take on challenges. There are both individual and team challenges. These are exceptionally complex problems that require a deep understanding of the concepts that have been covered in the current milestone.

Often, these remain incomplete before it's time for the group project.

I provide no guidance whatsoever for the challenges. Students choose to take on one, and when they feel it is complete, they can come sit with me and I let them know if the challenge is complete or not. If it is not, I tell them where there are deficiencies, but do not tell them how to fix them.

<a id="group-projects"></a>
### Group Projects

The group project marks the end of the milestone. It requires the students to utilize many tools in order to effectively solve a complex problem with their teammates. We're not just teaching the ability to code at Nashville Software School. We're also teaching students how to be valued, productive teammates.

1. How to define a problem and break it down into discrete tasks in a Trello board.
1. Produce wireframes to aid in the production of acceptance criteria.
1. Decide on a git branching strategy, how & when to perform merges, and how to resolve merge conflicts.
1. Write unit tests for core functionality before implementation begins.
1. Effective communication strategies when there is team conflict, and that team conflict is not a bad thing, but a good thing when done with respect and not in a destructive manner.

I provide clear requirements for the success of the project, then the students are broken up into tea of 3 or 4 and then sent off to build it out over a few days' time.

<a id="milestones"></a>
# Milestones

One of the major concepts in [mastery learning](#mastery-learning) is to not drive a classroom forward as if they were a herd of cattle. In the current, traditional environment, an instructor covers many discrete topics, quizzes the students on the topic, provides a grade, and then the entire class moves on, regardless of the individual level of comprehension of each student.

We don't do that.

In the previous section, I described what goes into a successful group project for the student teams. There are four milestones (plus the capstone), each with a corresponding group project where students take their individual comprehension on a set of concepts and then collectively apply them to a large, complex problem.

Upon completion, they present their project, as a group, to the rest of their teammates in their cohort. Each student in the group discusses what went right, what went wrong, and a general summary of their experience for the project. It serves as a cursory 

<a id="milestone-one"></a>
## Milestone 1: The Static Web

![The Static Web](/content/images/2016/01/static_web.png)

<a id="milestone-two"></a>
## Milestone 2: Single Page Applications

![Single Page Applications](/content/images/2016/01/single_page_applications.png)

<a id="milestone-three"></a>
## Milestone 3: The Modern JavaScript Developer

![Modern JavaScript Developer](/content/images/2016/01/modern_js_developer.png)

<a id="milestone-four"></a>
## Milestone 4: Rich Browser Applications

![](/content/images/2016/01/rich_browser_applications.png)

<a id="capstone-project"></a>
## Capstone Project

After all the exercises, and all the quizzes, and all the group projects, comes the capstone project. It's the final project for the students, and they must independently develop this final project from an idea to completion. I have only two rules:

1. The project must be the student's idea and worked on only by the student. This is to make sure that there are no external influences on the student during development.
1. It has to be something that the student finds interesting. If it's not something that the students **wants** to build, it's already in peril of not being done.

This is the summative assessment for the course. The journey is completely subjective, even if the final outcome is objective (the student constructed a working application, or didn't), because the students must use their analytical and creative intelligence to apply all of the knowledge they have gained to implement a very complex solution to their idea - and there are multiple ways to achieve it.

# Utilizing Modern Technology

We have the ability, with all the modern tooling available, to allow students to have access to every resource, at any time, in any location. One of our main jobs, as mentors, is to ensure that students learn quickly how to locate, and absorb that information.

This is the linchpin of the entire effort. Students must be able to review code examples, listen to us explain the context & purpose, and have references to external resources at any time.

### Curriculum on Github

My front end curriculum is open sourced on Github. Students can access the code I use during live-coding sessions, do exercises for each module whenever they like, and see what's coming up if they want. One of my long-term goals is to have our entire curriculum publicly available to any potential, current, or former, student who wants to review the material.

Some schools do not do this. They believe the curriculum is a kind of secret, special sauce.

**What** is being taught is not secret at all. We all teach the same things.

**How** it is taught is the secret sauce.

### Videos of Live Coding and Lecture

When I lecture about, and live-code with the team, about a concept, process, or tool, I provide the context they need to understand how to implement it, how it relates to what they have previously learned, and the context in which it should be used. Unfortunately, during that time, students have a crucial choice to make (especially when we delve into more complex topics).

1. Pay close attention to what I'm doing, discuss it, and ask any questions that they have about it.
1. Take notes as I talk, or code along with me. This way they have a record of what was discussed, but they could not focus on the discussion and start the comprehension process.

Even if students do pay attention and take part in discussion, their comprehension is minimal at best, and once the process is done, they have no way of enhancing their understanding through repetition.

To alleviate that, I'm going to be producing videos of my live coding sessions, along with me talking about the concept while I'm coding. Students can then watch the video as many times as they like, pause it to try out some code, or even go back to a video later in the course to refresh their understanding.

### Quizzes on Github Classroom

Github Classroom has a serious potential to help me out when giving out quizzes, exercises and group project. Right now, it has some very annoying bugs, but nothing that prevents me from using it (there are workarounds for the serious issues).

So I can create a classroom object for each cohort of students, pre-fill it with all of the quizzes, and send the links to each student. When the students feel prepared to take a quiz, they get a fresh repository based off of a boilerplate repository that I specify. Each student can then work on the quiz and submit it to myself, or one of the TAs for an assessment.

This is a nice setup because we can then comment on their code directly on Github, and if more work is needed from the student, they can submit further pull requests.

# Section 5 - Instructional Design

To ensure that I'm using the most effective techniques for teaching, I've read many studies and theories about Instructional Design. After reading about [van Merriënboer's 4C/ID Model](http://www.nwlink.com/~donclark/hrd/learning/id/4c_id.html) and the differing approaches to presenting information, my goal is transition the classroom dynamic from a deductive-expository strategy to an inductive-inquisitory strategy.

Fancy words, I know.

What they mean, at a high level, is that when the class starts, the students have no baseline skills, or knowledge, that they can draw upon in order to find information to complete any tasks at all. I need to present the information, the context, the history and basic purpose of a concept of software development, and walk the students through how to type in the commands or code. 

Next, I must provide them with simple examples on which they can practice implementing the new information. The students then start to build up some basic skills on how to explore the information and use it in various contexts.

After several weeks, I've started to break down their way of problem solving to think more like a software developer. Then I can adopt a new strategy.

I can present examples of techniques and libraries to them, provide a few resources, and then let them find out the finer implementation details on their own. It is more time consuming, but since the students find the information on their own, their understanding of it is more comprehensive.

# Final Thoughts

This is all a grand experiment. Coding schools are only a 3 year old industry, and nobody **really** knows what they are doing yet. However, taking empirical data from the past 100 years of pedagogy, and applying it to what I see in the classroom every day is the only logical course of action. My opinions, contrary to other schools, play almost no role in how the course is built or taught. 

Well, that's only partly true, because my opinion is that students should be taught in ways that are based on solid scientific findings, and not on the capricious, arbitrary (and therefore biased) whims of a layperson.




<a id="glossary"></a>
# Glossary

<a id="mastery-learning"></a>
## Mastery Learning

So what is mastery learning? It comes from the writings of [Benjamin S. Bloom](https://en.wikipedia.org/wiki/Benjamin_Bloom) of the University of Chicago. In the 1960s, Bloom began researching the different methodologies that existed in student learning outcomes. He examined how learning happened in the traditional classroom that was driven mostly by time, and then he examined how learning happened in a 1 on 1, tutor/student relationship.

A brief summary of his findings for the most effective method to maximize student comprehension (i.e. mastering the concept) is pulled from [education.com](http://www.education.com/reference/article/mastery-learning/).

> Teachers first organize the concepts and skills they want students to learn into learning units that typically involve about a week or two of instructional time. Following initial instruction on the unit, teachers administer a brief quiz or assessment based on the unit's learning goals. Instead of signifying the end of the unit, however, this assessment's purpose is to give students information, or “feedback,” on their learning.
> 
> Paired with each formative assessment are specific “corrective” activities for students to use in correcting their learning difficulties, [and] the correctives are individualized.

When researchers and teachers applied the concepts of mastery learning, here's what they found.

> "When compared to traditionally taught classes, students in mastery learning classes consistently have been shown to learn better, reach higher levels of achievement, and develop greater confidence in their ability to learn and in themselves as learners." - (Guskey, 1997, 2001)

![Distribution of of achievement in traditional learning](/content/images/2015/12/pcl_0001_0002_0_img0102.jpg)

![Distribution of achievement in mastery learning](/content/images/2015/12/pcl_0001_0002_0_img0104.jpg)

<a id="formative-assessments"></a>
## Formative Assessments

In mastery learning classrooms, there are formative assessments, which is a general term for a test, or quiz. The difference is that the test is no longer a **Thing to be Dreaded**, which officially marks **The End** of the unit of learning such as it is in a traditional classroom. 

> Bloom believed that a far better approach would be for teachers to use their classroom assessments as learning tools, and then to follow those assessments with a feedback and corrective procedure. In other words, instead of using assessments only as evaluation devices that mark the end of each unit, Bloom recommended using them as part of the instructional process to identify individual learning difficulties (feedback) and to prescribe remediation procedures (correctives).

My plan is to implement the concept of using evaluations-as-tools (I call them quizzes), and will be providing one quiz for each of the main concepts in the class. Students will take these quizzes at their own pace, with the following guidelines.

1. Each student must work on each quiz before the end of each milestone (more on these later).
1. If the student's TA provides corrective feedback, then the recommended course of action is to discuss those issues, watch the corresponding videos again, perhaps work on another exercise, and then take the quiz again.






