---
layout: default
title: Post
permalink: /post/
---

<h2>Post</h2>

{% assign postsByYearMonth = site.posts | group_by_exp: "post", "post.date | date: '%Y-%m'" %}

{% for yearMonth in postsByYearMonth %}
  <h3>{{ yearMonth.name | date: "%B %Y" }}</h3>
  <ul>
    {% for post in yearMonth.items %}
      <li>
        <a href="{{ post.url }}">{{ post.title }}</a>
        <p>{{ post.excerpt }}</p>
      </li>
    {% endfor %}
  </ul>
{% endfor %}
