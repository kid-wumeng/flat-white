<div class="sidebar">
  
  <div class="face">
    <div img-src="{{ config.face }}"></div>
  </div>

  <h1 class="author">{{ config.author }}</h1>
  <p class="desc">{{ config.description }}</p>
  
  
  {# about-me页，判断是否激活 #}
  {% if page.path === 'about-me/index.html' %}
    {% set about_me_active = 'active' %}
  {% endif %}
  
  {# links页，判断是否激活 #}
  {% if page.path === 'links/index.html' %}
    {% set links_active = 'active' %}
  {% endif %}
  
  <div class="pages">
    <a class="{{about_me_active}}" href="{{ url_for('about-me') }}">ABOUT ME</a>
    <a class="{{links_active}}" href="{{ url_for('links') }}">LINKS</a>
  </div>
  
  <div class="categories">
  
    {# index页，判断激活哪个 #}
    {% if page.path === 'index.html' %}
      {% set active = 'active' %}
    {% endif %}
    <a class="{{active}}" href="{{ url_for() }}">All Categories</a>
    
    {% for category in site.categories %}
      
      {# post页，判断激活哪个 #}
      {% set active = '' %}
      {% if page.category === category.name %}
        {% set active = 'active' %}
      {% endif %}
      
      {# category页，判断激活哪个 #}
      {% for page_category in page.categories %}
        {% if page.path !== 'index.html' && page_category.name === category.name %}
          {% set active = 'active' %}
        {% endif %}
      {% endfor %}
    
      <a class="{{ active }}" href="{{ url_for(category.path) }}">{{ category.name }}</a>
      
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