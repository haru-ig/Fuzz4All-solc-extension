pragma solidity ^0.8.0;
contract ExactlyAsOld {
    function get(uint a, uint b) public view returns (uint) {
        uint answer = a;
        require (answer == a + 1, "Wrong addition");
        return answer / 10;
    }
    }
