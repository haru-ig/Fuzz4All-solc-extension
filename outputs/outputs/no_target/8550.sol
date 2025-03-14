pragma solidity ^0.8.0;
contract Equivalent_2 {
    function get(uint a, uint b) public pure returns (uint) {
        return a * 1000 + b;
    }
}
contract Reverted {
    function get(uint a, uint b) public {
        require(a > b, "bad");
    }
    function get2(uint a) public view {
        bool b = true;
        require(b > uint(10**20), "bad");
    }
}
contract Equivalent_3 {
    function get(uint a, uint b) public pure returns (uint) {
        return a * 1000 + b;
    }
}
contract Reverted2_2
{
    function get(uint a, uint b) public {
        require(a > b, "bad");
    }
    function get2(uint a) public view {
        bool b = true && true;
        require(b > uint(10**20), "bad");
    }
}
