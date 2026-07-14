---
layout: default
---

<section class="home-section">
  <h2 class="section-title">About</h2>
  <div class="section-content">
    <p>I'm a Ph.D. student at <a href="https://www.bu.edu/" target="_blank" rel="noopener">Boston University</a>. My advisor is <a href="https://sites.google.com/view/wei-lun-harry-chao" target="_blank" rel="noopener">Prof. Wei-Lun Chao</a>. I explore deep learning algorithms where evidence leaves the world unresolved, and I study the theory of what can still be learned there.</p>
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

  <div class="publication-list">
    {% for publication in site.publications %}
      <article>
        <p class="publication-title"><cite><a href="{{ publication.url | escape }}" target="_blank" rel="noopener">{{ publication.title | escape }}</a></cite></p>
        <p class="publication-meta">{% for author in publication.authors %}{% if author == site.publication_author %}<strong>{{ author | escape }}</strong>{% else %}{{ author | escape }}{% endif %}{% unless forloop.last %}, {% endunless %}{% endfor %}</p>
        <p class="publication-venue">{{ publication.venue | escape }} {{ publication.year }}</p>
      </article>
    {% endfor %}
  </div>
</section>
