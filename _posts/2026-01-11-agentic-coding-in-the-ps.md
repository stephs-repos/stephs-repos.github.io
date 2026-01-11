---
layout: post
title: "Agentic Coding: Changing the Economics of Government Modernization"
date: 2026-01-11
categories: [technology, public-sector]
tags: [ai, agentic-coding, modernization, technical-debt]
---

Leaders in the public service are being told that AI is going to make software delivery faster. That's true, but it's not the most interesting part of the story.

The more important shift is how AI can be used to deliver services more effectively by tackling the **massive amounts of technical debt** that have accrued within IT departments over decades. Those same departments have to live under myriad constraints and responsibilities, limiting what they can realistically do about it.

> AI appears to be the first real innovation that changes the economics of tackling legacy debt since, well, *never*, that holds some hope of breaking some old, long-established barriers.

---

## What is Agentic Coding?

By AI, I'm not referring to the now ubiquitous and well-adopted code completion tools that help developers write code more quickly. I'm talking about **agentic coding**, where the tool can take a goal, navigate a codebase, order your coffee, make changes across multiple files, run tests, fix what breaks, and keep going.

At its best, it's like watching bees. Observing a single bee's behaviour may not be particularly remarkable, but observing the behaviour of the hive reveals an almost mystical emergent property that can be hard to get your head around.

![Honeybees working together in a hive](/assets/images/bees.png)

The fundamentals for how the algorithms work can be explained in a few minutes at a whiteboard, but combined with decades of statistical model maturation and obscene levels of compute, the resulting experience can feel like science fiction.

Examples include:

- Claude Code CLI
- Cursor
- Windsurf
- GitHub Copilot Agent

They become noticeably more capable every week. If you've never seen it used in a real project, it's easy to assume it's just a slightly better version of what we already had. It isn't. **It changes the economics of delivery** in a way that has profound downstream effects on planning, risk, and outcomes.

---

## The Momentum Advantage

One obvious benefit is speed, but the practical benefit is **momentum**.

In traditional delivery cycles, even small ideas can die because the cost of trying them is too high:

- A "quick spike" becomes a mini project
- A mini project needs a slot in the plan
- The plan needs approvals
- Approvals cost money
- The Finance department starts calling

Eventually, teams stop proposing improvements because they know how the story ends.

With agentic coding, the cost of learning from feature experiments becomes cheap. You can quickly prototype a change, see what breaks, understand the implications, and either keep it or throw it away—without feeling like you just threw a bucket of cash on the street and set it on fire.

> Rather than waiting days to see changes, you can sometimes get down to minutes.

That changes behaviour. It makes it easier to test assumptions early, before they harden into commitments, and it shortens the gap between "we should improve this" and "here's a working version we can evaluate."

---

## Finally Tackling Technical Debt

Too many organizations have systems that are brittle, poorly documented, maybe even still running on tubes and wires, treated as untouchable because the risk of breaking something feels too high.

- The original authors are gone
- The test coverage is thin
- The knowledge is tribal

In that situation, the first barrier isn't "can we fix it?" but rather, **"abandon all hope, ye who enter here."**

<figure style="text-align: center;">
  <img src="/assets/images/old_systems.png" alt="Legacy systems warning" style="display: block; margin: 0 auto;">
  <figcaption><em>...it's time</em></figcaption>
</figure>

Agentic tools, used well, can help build that understanding faster by:

- Reading large codebases
- Mapping behaviour
- Generating tests
- Supporting refactoring work that would otherwise be slow, expensive, and easy to defer

*(Occasionally vendors would attempt to convince me that writing tests was akin to building two applications and therefore not worth the investment. Their argument, however misguided, is happily nullified when the agent writes all the tests for you.)*

It doesn't eliminate risk, but it can **reduce the cost of doing the right thing**, which is often what makes modernization possible in the first place.

---

## The Public Sector Reality

Public sector technology problems are rarely greenfield. More typically, delivery happens in the shadow of:

- Legacy systems
- Integration complexity
- Security constraints
- Operational realities

In that world, the ability to move quickly isn't about shipping more features for the sake of it. It's about **reducing uncertainty and turning unknowns into knowns** before you have spent your political capital, your budget, and your calendar.

It's also about creating space for the kind of careful, incremental modernization that everyone agrees is necessary but rarely has enough oxygen.

---

## The Value of Your Experienced People

The shift to agentic coding highlights the value of experienced staff developers and architects who already understand your environment. **Organizations that benefit most will be those that have this resident talent.**

They understand:

- The mission
- The policy edge cases
- The data realities
- The service commitments
- The operational constraints

They know what will get your team paged at 2 a.m. and what will quietly fail in a way that consumers of your system actually feel.

Their role shifts to **setting direction and guardrails**, pairing deep domain knowledge with design experience and core engineering disciplines:

- A proper test harness
- Reliable CI/CD
- Sensible logging and monitoring
- Secure handling of credentials and data
- Clear interface contracts
- Deployment patterns that allow safe rollout and rollback

They know how to ask the right questions that bridge the tech to business outcomes: *What problem are we solving? What can we simplify? What risks are acceptable? Where do we need auditability? What about bilingual requirements? What will this look like to support teams a year from now?*

> In other words, they keep the AI from turning your code base into an episode of *This Old House*.

---

## Choosing the Right Vendors

Rare or lucky are the few who have managed to retain these in-house experts over the years. For those who haven't, there is, of course, the software delivery vendor ecosystem.

You need to think of them as **the commodity-level resource that they are**. They will never know your domain like you do, but can be a reasonable fallback.

Find the nimble ones who have already adapted to the agentic coding era and can demonstrably prove it. It's not a stretch to partially score RFP respondents on their ability to generate a prototype implementation of some feature subset in real time, right before your eyes.

Their bench needs to consist of **experienced talent, not junior developers**. They should be able to deliver faster, and you should be able to conserve budget.

---

## A Reality Check

Just to push back a little on my own hype: agentic coding is powerful, but it is **not yet fully autonomous nor wise**.

It will confidently take a plausible path even if it's the wrong one for your requirements, and it won't magically know your constraints unless you make them explicit. It still needs strong guardrails.

I regularly need to tell it things like:

- *"No, we already have code for that, go find it"*
- *"Here's a test you just blew up, go fix it"*

Often I'll push back on the AI's recommendation for some design decision, and I'll get some version of *"Oh yeah, right, that is actually a better idea, let me go off and implement..."*

These types of issues become more common as the code base grows or has a proliferation of different modules. At times it can feel like trying to rationalise with your teenager. Despite arguing with absolute conviction, their context window, quite literally, does not contain enough information, so **you have to be the parent**—make sure they don't blow up your house.

<figure style="text-align: center;">
  <img src="/assets/images/no_touch.png" alt="Old systems in government" style="display: block; margin: 0 auto;">
</figure>

There are techniques you need to learn for interacting with it that go beyond just prompt engineering:

- Leveraging agent skills
- Agent memory files (CLAUDE.md, AGENTS.md)
- Task decomposition
- Checkpointing
- Knowing when to reset context
- Knowing when to cut your losses and try something different

The tool can generate a lot, but it can also generate confusion if nobody is steering.

*But that's as of 9 o'clock this morning, and at the current rate of evolution, I'd be surprised if a lot of these limitations still exist in six months.*

---

## The Real Leadership Question

This is why I think the real leadership question isn't "will AI make software faster?" It will.

The better question is whether we use that speed to create **outcomes that have been hard to achieve in the public sector for a long time**:

- Shorter and less painful modernization cycles
- Safer changes to legacy systems
- Faster learning before big commitments
- A realistic path to shrinking technical debt instead of just managing it

If we get that right, the impact isn't just an IT story. It's a **service delivery story**: fewer outages, less time lost to brittle processes, more resilient systems, and more capacity to improve the citizen experience without needing everything to be rewritten from scratch.

---

**Software delivery is fun again.**
