---
layout: default
---

<section class="home-section">
  <h2 class="section-title">About</h2>
  <div class="section-content">
    <p>I'm a Ph.D. student at <a href="https://www.bu.edu/" target="_blank" rel="noopener">Boston University</a>. My advisor is <a href="https://sites.google.com/view/wei-lun-harry-chao" target="_blank" rel="noopener">Prof. Wei-Lun Chao</a>. I'm interested in how models learn representations, and how machine learning can help us study scientific problems.</p>
  </div>
</section>

<section class="home-section">
  <h2 class="section-title">Post</h2>

  <div class="post-list">
    {% for post in site.posts %}
      <article>
        <p class="post-entry-title"><a class="post-list-link" href="{{ post.url | relative_url }}">{{ post.title | escape }}</a></p>
        <p class="post-entry-date">{{ post.date | date: "%-d %B %Y" }}</p>
      </article>
    {% endfor %}
  </div>
</section>

<section class="home-section">
  <h2 class="section-title">Publication</h2>
  <p class="publication-note">* Equal contribution.</p>

  {% for group in site.publication_groups %}
  {% assign publications = site.publications | where: "category", group.key %}
  {% if publications.size > 0 %}
  <h3 class="publication-group-title">{{ group.title | escape }}</h3>
  <div class="publication-list">
    {% for publication in publications %}
      <article>
        <p class="publication-title"><cite><a href="{{ publication.url | escape }}" target="_blank" rel="noopener">{{ publication.title | escape }}</a></cite></p>
        {% assign equal_contribution = publication.equal_contribution | default: 0 %}
        <p class="publication-meta">{% for author in publication.authors %}<span class="publication-author">{% if author == site.publication_author %}<strong>{{ author | escape }}</strong>{% else %}{{ author | escape }}{% endif %}{% if forloop.index <= equal_contribution %}<sup title="Equal contribution">*</sup>{% endif %}</span>{% unless forloop.last %}, {% endunless %}{% endfor %}</p>
        <p class="publication-venue">{{ publication.venue | escape }} {% if publication.category == "conference" %}{{ publication.year }}{% else %}({{ publication.year }}){% endif %}</p>
      </article>
    {% endfor %}
  </div>
  {% endif %}
  {% endfor %}
</section>
