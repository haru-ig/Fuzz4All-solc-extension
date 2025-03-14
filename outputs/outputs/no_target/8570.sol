pragma solidity ^0.8.0;
address NotAContract;
contract Bad {
    function get(uint a, uint b) public view returns (uint) {
        NotAContract x = a;
        uint answer = 1 * 10 + b;
        require (x == a && answer == a + 1);
        return answer;
    }
    }
