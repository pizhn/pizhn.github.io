---
layout: default
---

<section class="about">
  <h2 class="section-title">About Me</h2>
  <div class="section-content">
    <p>I'm a third-year Ph.D. student in the Department of Computer Science at <a href="https://www.osu.edu/" target="_blank">The Ohio State University</a>. My advisor is <a href="https://sites.google.com/view/wei-lun-harry-chao" target="_blank">Prof. Wei-Lun (Harry) Chao</a>. My research interests lie in developing modern machine learning algorithms robust to distribution and modality variations.
    </p>
  </div>
</section>

<section class="publications">
  <h2 class="section-title">Publications</h2>

  <small class="contribution-note">* Equal contribution</small>

  <article class="publication-card">
    <div class="img-grid">
      <img src="/assets/img/pub/ssl.jpg" alt="SSL">
    </div>
    <div class="publication-info">
      <p><strong>P. Zhang*</strong>, Z. Mai*, Q.-H. Nguyen, W.-L. Chao, 
      <cite>Revisiting Semi-Supervised Learning in the Era of Foundation Models</cite>, <br/>
      <cite><strong>NeurIPS 2025</strong></cite></p>
    </div>
  </article>

  <article class="publication-card">
    <div class="img-grid">
      <img src="/assets/img/pub/peft-main.jpg" alt="PEFT Main">
      <img src="/assets/img/pub/peft-merge.jpg" alt="PEFT Merge">
    </div>
    <div class="publication-info">
      <p>Z. Mai, <strong>P. Zhang</strong>, C.-H. Tu, H.-Y. Chen, Q.-H. Nguyen, L. Zhang, W.-L. Chao, 
      <cite>Lessons Learned from a Unifying Empirical Study of Parameter-Efficient Fine-Tuning (PEFT) in Visual Recognition</cite>, <br/>
      <cite><strong>CVPR 2025 (Highlight)</strong></cite></p>
    </div>
  </article>

  <article class="publication-card">
    <div class="img-grid">
      <img src="/assets/img/pub/ft-main.jpg" alt="Fine-tuning Main">
      <img src="/assets/img/pub/ft-calib.jpg" alt="Fine-tuning Calibration">
    </div>
    <div class="publication-info">
      <p>Z. Mai*, A. Chowdhury*, <strong>P. Zhang*</strong>, C.-H. Tu, H.-Y. Chen, V. Pahuja, T. Berger-Wolf, S. Gao, C. Stewart, Y. Su, W.-L. Chao, 
      <cite>Fine-Tuning is Fine, if Calibrated</cite>, <br/>
      <cite><strong>NeurIPS 2024</strong></cite></p>
    </div>
  </article>

  <article class="publication-card">
    <div class="img-grid three-column">
      <img src="/assets/img/pub/tpp-33.jpg" alt="Phase 1">
      <img src="/assets/img/pub/tpp-66.jpg" alt="Phase 2">
      <img src="/assets/img/pub/tpp-100.jpg" alt="Phase 3">
    </div>
    <div class="publication-info">
      <p><strong>P. Zhang</strong>, R. Iyer, A. Tendulkar, G. Aggarwal, A. De, 
      <cite>Learning to Select Exogenous Events for Marked Temporal Point Processes</cite>, <br/>
      <cite><strong>NeurIPS 2021</strong></cite></p>
    </div>
  </article>
</section>

<style>
  .about {
    padding-bottom: 0;
  }

  .section-title {
    border-bottom: 2px solid #e0e0e0;
    padding-bottom: 0.5rem;
    margin: 2rem 0 1.5rem;
  }

  .publication-card {
    background: white;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    padding: 1.5rem;
    margin: 1.5rem 0;
    transition: transform 0.2s;
  }

  .publication-card:hover {
    transform: translateY(-2px);
  }

  .img-grid {
    display: grid;
    /* gap: 1rem; */
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    /* margin: 1rem 0; */

    /* border-radius: 4px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1); */
  }

  .img-grid img {
    width: 100%;
    height: 150px;
    object-fit: contain;
    /* border-radius: 4px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1); */
  }

  .three-column {
    grid-template-columns: repeat(3, 1fr);
  }

  .publication-info {
    /* padding: 1rem 0; */
    line-height: 1.6;
  }

  .contribution-note {
    display: block;
    margin-top: 1rem;
    color: #666;
  }

  @media (max-width: 768px) {
    .img-grid {
      grid-template-columns: 1fr;
    }
    
    .three-column {
      grid-template-columns: 1fr;
    }
  }
</style>