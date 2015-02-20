{% from "pydio/map.jinja" import pydio with context %}

install-pydio:
  pkg.installed:
    - name: {{ pydio.pkg }}

pydio-repo:
  pkgrepo.managed:
    - name: {{ pydio.pydio_repo }}
    - file: {{ pydio.repo_file }}
    - key_url: {{ pydio.key_url }}
    - require_in:
      - pkg: {{ pydio.pkg }}

pydio-src:
  pkgrepo.managed:
    - name: {{ pydio.pydio_src }}
    - file: {{ pydio.repo_file }}
    - key_url: {{ pydio.key_url }}
    - require_in:
      - pkg: {{ pydio.pkg }}
