Description
===========
   * Build a RPM from github with a private koji instance.
 
Prerequisites:
==============
   * scm_allowed configured correctly in /etc/kojid/kojid.conf
   * "common" git repository exits on git server base (???)

Usage:
======

koji build --scratch buildtag git://github.com/alphacc/github2koji.git?#HEAD

koji build --scratch buildtag git://github.com/alphacc/github2koji.git?#commit

Requirement:
============
   * Add a "sources" destination to a Makefile
   * 1 git repository for code and 1 for package generation ??
