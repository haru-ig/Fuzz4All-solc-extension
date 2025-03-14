pragma solidity ^0.8.0;
contract Fallback {
    uint x = 42;
    function f1() public {

        x = x*42;
    }
    function f2() public {

        x = x**42;
    }
}

contract Tests {
    function run(uint maxValue, uint numChecks) public {
    	for (uint i = 0; i < numChecks; i++) {


    		require(uint(0x385ec2230000000000000000000000000000000000000000000000000000000)!= 0x385ec223, "Failed");
    	}
    }
}
