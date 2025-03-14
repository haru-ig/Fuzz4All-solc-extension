pragma solidity ^0.8.0;
contract NonChecked {
    function get(uint a, uint b) public pure returns (uint) {
        uint answer = 1 * 10;
        answer += b;
        require (answer == a + 1, "Wrong addition");
        return answer;
    }
    }
