<div class="sidebar">
  
  <div class="face">
    <img src="{{ config.face }}">
  </div>

  <h1 class="author">{{ config.author }}</h1>
  <p class="desc">{{ config.description }}</p>
  
  <div class="pages">
    <a href="">ABOUT ME</a>
    <a href="">LINKS</a>
  </div>
  
  <div class="categories">
    <a href="{{ url_for() }}">All Categories</a>
    {% for category in site.categories %}
      <a href="{{ url_for(category.path) }}">{{ category.name }}</a>
    {% endfor %}
  </div>

  {% if !page.title %}
    <ul class="options">
      {# mode #}
        <li class="mode" default-mode="{{ config['post-list']['default-mode'] }}">
          <a mode="summary">SUMMARY</a> / <a mode="list">LIST</a>
        </li>
      {# sort #}
      {# <li class="sort" default-sort="{{ config['post-list']['default-sort'] }}">
        <a href="">ASC</a> / <a href="">DESC</a>
      </li> #}
    </ul>
  {% endif %}
  
  <div class="sns">
    {% for _, sns in config.sns %}
    <a href="{% if sns.name === 'mail' %}mailto:{% endif %}{{ sns.link }}" target="_blank">
        {% if sns.icon %}
          <img src="{{ sns.icon }}">
        {% else %}
          <img src="/img/{{ sns.name }}.png">
        {% endif %}
      </a>
    {% endfor %}
  </div>
  
  <script src="/js/jquery.min.js"></script>
  <script src="/js/sidebar.js"></script>
  
</div>