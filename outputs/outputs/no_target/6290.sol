pragma solidity ^0.8.0;
contract MyContract {
    function get(uint) public pure returns (address) {
        return address(0);
    }
    function set(uint a,uint b,uint) public {
        bool test = a < 0 | b > 0;
    }
}
contract C {
    function get(uint) public pure returns (address) {
        return address(0);
    }
}
