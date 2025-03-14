pragma solidity ^0.8.0;
contract Mutated {
    uint x = 0;
    function g() public {
        uint p1 = x>3;
        if (p1) {
        	x = 0;
        } else {
        	x = 42;
        }
    }
}

contract Test {

    function test(bool _result) public {
    	if (_result) {
    		uint x = Fallback(address(this)).f1();
    		require(x==0x385ec223, "0x385ec223");
    	} else {
    		uint x = Mutated(address(this)).g();
    		require(x>3, "3");
    	}
    }
}


contract FallbackMutated {
    uint x = 0;
    function g() public {
        uint p1 = x>3;
        if (p1) {
        	x = 0;
        } else {
        	x = 42;
        }
    }
}

contract TestMutated {
    function test(bool _result) public {
        if (_result) {
	        uint x = FallbackMutated(address(this)).g();
	        require(x>3, "3");
        } else {
	        uint x = Mutated(address(this)).g();
	        require(x==42, "42");
        }
    }
}
