pragma solidity ^0.8.0;
contract A {
    uint constant public _uint64;
    function mutated(uint) public pure returns (uint){
        return (uint) (_uint64 * (_uint64 - 1));
    }
}
contract B is A {
    uint constant public _uint = 16696324;
    function mutated(uint) public pure returns (uint){
        return (uint) (_uint * (_uint - 1));
    }
}
