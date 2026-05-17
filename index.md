---
layout: default
---

<section class="home-section about">
  <h2 class="section-title">About</h2>
  <div class="section-content">
    <p>I'm a Ph.D. student at <a href="https://www.osu.edu/" target="_blank" rel="noopener">The Ohio State University</a>. My advisor is <a href="https://sites.google.com/view/wei-lun-harry-chao" target="_blank" rel="noopener">Prof. Wei-Lun Chao</a>. I explore deep learning algorithms where evidence leaves the world unresolved, and I study the theory of what can still be learned there.</p>
  </div>
</section>

<section class="home-section post-page">
  <h2 class="section-title">Post</h2>

  {% assign postsByYearMonth = site.posts | group_by_exp: "post", "post.date | date: '%Y-%m'" %}

  <div class="post-list">
    {% for yearMonth in postsByYearMonth %}
      <div class="post-group">
        <h3 class="post-group-title">{{ yearMonth.name | date: "%B %Y" }}</h3>
        <ul class="post-list-items">
          {% for post in yearMonth.items %}
            <li class="post-list-item">
              <a class="post-list-link" href="{{ post.url }}">{{ post.title }}</a>
            </li>
          {% endfor %}
        </ul>
      </div>
    {% endfor %}
  </div>
</section>

<section class="home-section publications">
  <h2 class="section-title">Publication</h2>

  <div class="publication-list">
    <article class="publication-card">
      <div class="img-grid">
        <img src="/assets/img/pub/ssl.jpg" alt="SSL">
      </div>
      <div class="publication-info">
        <p class="publication-authors"><strong>P. Zhang</strong>, Z. Mai, Q.-H. Nguyen, W.-L. Chao</p>
        <p class="publication-title"><cite>Revisiting semi-supervised learning in the era of foundation models</cite></p>
        <p class="publication-venue"><strong>NeurIPS 2025</strong></p>
      </div>
    </article>

    <article class="publication-card">
      <div class="img-grid">
        <img src="/assets/img/pub/peft-main.jpg" alt="PEFT Main">
        <img src="/assets/img/pub/peft-merge.jpg" alt="PEFT Merge">
      </div>
      <div class="publication-info">
        <p class="publication-authors">Z. Mai, <strong>P. Zhang</strong>, C.-H. Tu, H.-Y. Chen, Q.-H. Nguyen, L. Zhang, W.-L. Chao</p>
        <p class="publication-title"><cite>Lessons learned from a unifying empirical study of parameter-efficient fine-tuning (PEFT) in visual recognition</cite></p>
        <p class="publication-venue"><strong>CVPR 2025</strong></p>
      </div>
    </article>

    <article class="publication-card">
      <div class="img-grid">
        <img src="/assets/img/pub/ft-main.jpg" alt="Fine-tuning Main">
        <img src="/assets/img/pub/ft-calib.jpg" alt="Fine-tuning Calibration">
      </div>
      <div class="publication-info">
        <p class="publication-authors">Z. Mai, A. Chowdhury, <strong>P. Zhang</strong>, C.-H. Tu, H.-Y. Chen, V. Pahuja, T. Berger-Wolf, S. Gao, C. Stewart, Y. Su, W.-L. Chao</p>
        <p class="publication-title"><cite>Fine-tuning is fine, if calibrated</cite></p>
        <p class="publication-venue"><strong>NeurIPS 2024</strong></p>
      </div>
    </article>

    <article class="publication-card">
      <div class="img-grid three-column">
        <img src="/assets/img/pub/tpp-33.jpg" alt="Phase 1">
        <img src="/assets/img/pub/tpp-66.jpg" alt="Phase 2">
        <img src="/assets/img/pub/tpp-100.jpg" alt="Phase 3">
      </div>
      <div class="publication-info">
        <p class="publication-authors"><strong>P. Zhang</strong>, R. Iyer, A. Tendulkar, G. Aggarwal, A. De</p>
        <p class="publication-title"><cite>Learning to select exogenous events for marked temporal point processes</cite></p>
        <p class="publication-venue"><strong>NeurIPS 2021</strong></p>
      </div>
    </article>
  </div>
</section>
