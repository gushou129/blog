{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}

{% block title %}{{ title }}{%- if theme.index_with_subtitle and subtitle %} - {{ subtitle }}{%- endif %}{% endblock %}

{% block class %}index posts-expand{% endblock %}

{% block content %}

  {%- for post in page.posts.toArray() %}
    {{ partial('_macro/post.swig', {post: post, is_index: true}) }}
  {%- endfor %}

  {% include '_partials/pagination.swig' %}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}

{%- if theme.footer.beian.enable %}
  <div class="beian">
    {{ next_url('https://beian.miit.gov.cn/#/Integrated/index', theme.footer.beian.icp) }}
    <span class="post-meta-divider">|</span>
    <img src="/images/beian_icon.png" style="display:inline-block;text-decoration:none;height:13px;" />
    {{ next_url('http://www.beian.gov.cn/portal/registerSystemInfo?recordcode='+theme.footer.beian.gongan_id, theme.footer.beian.gongan_num) }}
  </div>
{%- endif %}
