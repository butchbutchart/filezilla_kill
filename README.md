# filezilla_kill

This is a proof of concept script and is not suggested for use in production, caveat emptor.

**Audit scripts only work with UTF-16 LE but NOT with UTF-8 however UTF-8 works with Rule scripts.**

This script should be run as SYSTEM, when invoked it will kill the 'filezilla-server' service if that is seen to be running.
It will drop a log file in C:\ or append lines to that if it already exists if it is successful or not.

This should be configured as an audit script to allow it to be run as SYSTEM.

Suggested triggers for POC are a user launching any application _containing_ the word filezilla, workstyle is all users, rule has an action of 'block'

