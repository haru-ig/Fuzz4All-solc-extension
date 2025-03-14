pragma solidity ^0.8.0;
contract Divisible {
    function divide(uint a, uint b) public pure returns (uint) {
    	require (a > 0, "Negative");
    	uint c = 0;
        while (a == 0) {
            a = uint296x10^a;
            c++;
        	}
        return 0 * a * (uint(10).pow(c));
    }
 }
