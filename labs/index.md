---
title: Labs
---
# Labs
{% assign pages = site.pages | where_exp: "p", "p.path contains 'labs/'" %}
<ul>
{% for p in pages %}
  {% if p.url != page.url and p.name != 'index.md' %}
  <li><a href="{{ p.url | relative_url }}">{{ p.title | default: p.url }}</a></li>
  {% endif %}
{% endfor %}
</ul>
