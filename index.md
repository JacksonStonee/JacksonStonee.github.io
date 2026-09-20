---
layout: single
author_profile: true
title: ""
permalink: /
---

{::comment}
Homepage structure mirrors https://0xboku.com/ — a technical, minimal,
category-heavy landing page with the author sidebar rendered on the left.
Fill in each section with real work over time; the scaffolding stays.

Each bullet has an "ADD:" HTML comment marking where a real URL/writeup goes.
The visible "(placeholder)" text is intentional — it keeps bullets from
rendering empty and signals sections still to be filled. Delete "(placeholder)"
and the comment, then paste your real link + title.
{:/comment}

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

{::comment}
`layout: single` gives us the author sidebar but does NOT auto-render a post
feed (that's the `home` layout). We render the five most recent posts here
with a small Liquid loop so this page can keep the sidebar AND show a feed.
Adjust `limit:` to change how many posts appear.
{:/comment}
{% assign recent_posts = site.posts | sort: "date" | reverse %}
<ul class="post-list">
  {% for post in recent_posts limit: 5 %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <small>&nbsp;— {{ post.date | date: "%Y-%m-%d" }}</small>
    </li>
  {% endfor %}
</ul>

<p><a href="/posts/">All posts &rarr;</a></p>
