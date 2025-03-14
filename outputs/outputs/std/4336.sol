pragma solidity ^0.8.0;
contract Mutator
	{

	uint[] bArray = new uint[](0);

	function MutateAddress(uint a, uint b) public
	{
	    uint c;
	    uint temp;
	    uint max = b;
	    if (a > 0) {
	        c = 0;
	        temp = a;
	    }
	    else {
	        c = 0;
	        temp =a;
	    }

	    uint[] memory aB = temp;
	    while (c < 9999) {
	        aB = [a, b];
	        if (temp > 0) {
	            aB[0] = b;
	            aB[1] = a;
	        }
	        else {
	            aB[1] = b;
	            aB[0] = a;
	        }
	        aB[max] = 0;
	        bArray = aB;
	        c++;
	    }
	}

	}
