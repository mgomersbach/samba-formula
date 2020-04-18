{% from "samba/map.jinja" import samba with context %}

samba_client:
  pkg.installed:
  {% if samba.client is iterable and samba.client is not string %}
    - name: samba_client
    - pkgs: {{ samba.client|json() }}
  {% else %}
    - name: {{ samba.client }}
  {% endif %}
