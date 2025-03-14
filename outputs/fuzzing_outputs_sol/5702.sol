pragma solidity ^0.8.0;
contract semanticallyequivalent15
{
	uint public x;
	uint public y;
	uint public z;
    function test()public {
        bool a;
        a = 1;
        if (a) {
            x = 1;
            y = 10;
            z = 100;
        }
    }
}
