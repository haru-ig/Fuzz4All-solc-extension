pragma solidity ^0.8.0;
contract MutatedYulContract2 {
 uint public constant a = 0xDEAD;
     function multiply(uint z) public returns (uint) {
        uint x;
	    if (z == 1) {
		  x =  a;
	    } else {
    	  x =  z * 2;
    	}
        return x >= a? x : x + c;
    }
}
