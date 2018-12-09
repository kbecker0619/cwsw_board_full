# CWSW Board Support

Full documentation and code for the CWSW Board Support component.

This project provides standardized support for project boards. Some examples provide support for 
some manufacturer's Easy Start or demonstrator boards. Where possible, it simply provides a 
repackaging of the drivers already supplied by a given supplier.

This component "sits" atop the Architecture layer in the dependency tree, and "below" services and
application code.

Looking "down," this component knows the capabilities of the MCU driving the board, but doesn't
know the details of how to drive it. It also knows what physical ports are on the board, and
allocates MCU resources to drive these physical ports.

Looking "up," it provides a (somewhat-)standardized API to users of the board.
