pragma solidity ^0.8.0;
contract Prev_Equivalent {
    function get(uint a, uint b) public view returns (uint) {
    	require (a >= b, "bad");
    	uint answer = 1 * 10 + b;
        return answer;
    }
    function get2(uint a) public view returns (uint) {
    	require (a >= uint(10**20), "bad");
    	uint answer = a + 1;
        return answer;
    }
    }






pragma solidity ^0.8.0;
contract Reverted {
    uint public a;
    function doSomething() public {
    	revert("Test");
    }
    }
