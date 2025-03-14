pragma solidity ^0.8.0;
contract Equivalent {
    function get(uint a, uint b) public pure returns (uint) {
        return a * 10 + b;
    }
    function get2(uint a) public view returns (uint) {
        return a + 1;
    }
    }
contract Reverted2 {
    function get(uint a, uint b) public {
        require(a >= b, "bad");
    }
    function get2(uint a) public view {
        require(a >= uint(10**20), "bad");
    }
    }
pragma solidity ^0.8.0;
