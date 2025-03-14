pragma solidity ^0.8.0;
contract A {
    uint constant public _uint32 = 16**60;
    function mutated(uint x) public pure returns (uint) {

        return x ** _uint32;
    }
}
