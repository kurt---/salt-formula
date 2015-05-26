salt:
  install_packages: True
  master:
    gitfs_provider: gitpython
    fileserver_backend:
      - git
      - roots
    gitfs_remotes:
      - git://github.com/kurt---/salt-formula.git:
        - base: master
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
        - base: master
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
      update: True
      options:
        rev: stage
  basedir_opts:
    makedirs: True
    user: root
    group: root
    mode: 755
  list:
    base:
      - salt-formula
      - users-formula
      - fail2ban-formula
