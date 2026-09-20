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

# Incident Response

- *(placeholder)* <!-- ADD: link to a public IR writeup or war-story post -->
- *(placeholder)* <!-- ADD: link to your IR runbook / playbook repo -->
- *(placeholder)* <!-- ADD: talk / conference slides on IR -->

# Digital Forensics

- *(placeholder)* <!-- ADD: link to a DFIR case study or blog post -->
- *(placeholder)* <!-- ADD: link to a forensic tool you've released -->
- *(placeholder)* <!-- ADD: memory / disk / cloud forensics writeup -->

# Red Team

*Cobalt Strike*

- *(placeholder)* <!-- ADD: BOFs, aggressor scripts, or malleable C2 profiles -->
- *(placeholder)* <!-- ADD: post on CS tradecraft / OPSEC -->

*Initial Access*

- *(placeholder)* <!-- ADD: phishing infra / delivery chain writeups -->
- *(placeholder)* <!-- ADD: initial access tooling -->

*Post-Exploitation*

- *(placeholder)* <!-- ADD: lateral movement / persistence research -->
- *(placeholder)* <!-- ADD: EDR evasion writeups -->

# Malware Analysis

- *(placeholder)* <!-- ADD: link to a reverse-engineering writeup -->
- *(placeholder)* <!-- ADD: link to a config extractor / static analyzer you've released -->
- *(placeholder)* <!-- ADD: sandbox / dynamic analysis post -->

# Detection Engineering

*Sigma / YARA*

- *(placeholder)* <!-- ADD: link to your Sigma rules repo -->
- *(placeholder)* <!-- ADD: link to your YARA rules repo -->

*SIEM / EDR*

- *(placeholder)* <!-- ADD: detection content for Elastic / Splunk / Sentinel -->
- *(placeholder)* <!-- ADD: detection engineering methodology post -->

# Published Research

- *(placeholder)* <!-- ADD: CVEs — cross-reference /exploits/ -->
- *(placeholder)* <!-- ADD: whitepapers / blog posts -->
- *(placeholder)* <!-- ADD: conference talks (DEF CON, BSides, etc.) -->

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
