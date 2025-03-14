pragma solidity ^0.8.0;
contract Checked {
    function get(uint a, uint b) public view returns (uint) {
        if (a!= b) revert("bad");
        uint answer = 1 * 10 + b;
        require (answer == a + 1, "Wrong addition");
        return answer;
    }
    }
