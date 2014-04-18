MessageErlangNode
=================

Send Message between erlang node


Start Node1
===========

erl -sname node1 -setcookie abc

##local register node with register(RegisterName, PID).
register(shell, self()).

Start Node2
===========

erl -sname node2 -setcookie abc

##local register node with register(RegisterName, PID).
register(shell, self()).

Send Message Pattern
====================

{RegisterName, 'NodeName@HostName' } ! Message.
