---
layout: single
author_profile: false
title: ""
permalink: /
classes: wide
---

<!--
  Homepage structure mirrors https://0xboku.com/ — no sidebar, an inline bio
  block at the top, then category H1 sections, then a Recent Posts feed.
  Fill each bullet in over time; the `(placeholder)` markers keep bullets
  from rendering empty. Replace with `[Title](url)` when you have real links.
-->

<p markdown="1">
**Jackson Stone**<br>
[LinkedIn](https://www.linkedin.com/in/jackson-stone1/) &bull; [GitHub](https://github.com/JacksonStonee)<br>
*Senior Incident Responder &mdash; Incident Response & Offensive Security*
</p>

---

# Digital Forensics and Incident Response

- *(placeholder)* <!-- ADD: link to a DFIR writeup, case study, or war-story post -->
- *(placeholder)* <!-- ADD: link to an IR runbook / playbook or forensic tool you've released -->
- *(placeholder)* <!-- ADD: talk / conference slides on DFIR -->

*Cyber Defenders*

- *(placeholder)* <!-- ADD: link to a CyberDefenders lab writeup / walkthrough -->
- *(placeholder)* <!-- ADD: link to another CyberDefenders challenge -->

---

### Recent Posts

{% assign recent_posts = site.posts | sort: "date" | reverse %}
<ul class="post-list">
  {% for post in recent_posts limit: 5 %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <small>&nbsp;&mdash; {{ post.date | date: "%Y-%m-%d" }}</small>
    </li>
  {% endfor %}
</ul>
