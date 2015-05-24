salt:
  install_packages: True
  master:
    fileserver_backend:
      - git
      - roots
    gitfs_remotes:
      - git://github.com/kurt---/salt-formula.git:
        - base: develop
    file_roots:
      base:
        - /srv/salt
    pillar_roots:
      base:
        - /srv/pillar
  minion:
    master: salt
    fileserver_backend:
      - git
      - roots
    gitfs_remotes:
      - git://github.com/kurt---/salt-formula.git:
        - base: develop
    file_roots:
      base:
        - /srv/salt
    pillar_roots:
      base:
        - /srv/pillar

salt_formulas:
  git_opts:
    default:
      baseurl: https://github.com/kurt---
      basedir: /srv/formulas
      update: False
      options:
        rev: master
    dev:
      basedir: /srv/formulas/dev
      update: True
      options:
        rev: master
    stage:
      basedir: /srv/formulas/stage
      update: True
      options:
        rev: develop
  basedir_opts:
    makedirs: True
    user: root
    group: root
    mode: 755
  list:
    base:
      - salt-formula
    dev:
      - salt-formula
      - users-formula
