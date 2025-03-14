pragma solidity ^0.8.0;
contract Equivalent {
    function get(uint _a, uint _b) public pure returns (uint) {
        return _a * 10 + _b;
    }
    function get2(uint _a) public view returns (uint) {
        return _a + 1;
    }
    }
contract Reverted2 {
    function get(uint _a, uint _b) public {
        require(_a >= _b, "bad");
    }
    function get2(uint _a) public view {
        require(_a >= uint(10**20), "bad");
    }
    }
