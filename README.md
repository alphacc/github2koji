Description
===========
   * Build a RPM from github with a private koji instance.
 
Prerequisites:
==============
   * scm_allowed configured correctly in /etc/kojid/kojid.conf
   * host:repository[:use_common[:source_cmd]]
   * "common" git repository exits on git server base (???)
   
   Explanations from code : "Verify that the host and repository of this SCM is in the provided list of
   allowed repositories.scm_allowed is a space-separated list of host:repository[:use_common[:source_cmd]] tuples.  Incorrectly-formatted
   tuples will be ignored. If use_common is not present, kojid will attempt to checkout a common/ directory from the
   repository.  If use_common is set to no, off, false, or 0, it will not attempt to checkout a common/
   directory.source_cmd is a shell command (args separated with commas instead of spaces) to run before building the srpm.
   It is generally used to retrieve source files from a remote location.  If no source_cmd is specified,
   "make sources" is run by default.


Usage:
======

koji build --scratch buildtag git://github.com/alphacc/github2koji.git?#HEAD

koji build --scratch buildtag git://github.com/alphacc/github2koji.git?#commit

Requirement:
============
   * Add a "sources" destination to a Makefile
   * 1 git repository for code and 1 for package generation ??
