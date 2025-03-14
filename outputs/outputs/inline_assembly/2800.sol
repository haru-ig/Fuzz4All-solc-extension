pragma solidity ^0.8.0;
contract A {
    function add(uint p) public pure returns (uint) {
        return p + 1;
    }
    function mul(uint p) public pure returns (uint) {
        return p * 2;
    }
}
