pragma solidity ^0.8.0;
interface MutatorExample {
    function subtract(uint x, uint y) public pure returns(uint z);
    function setInt(uint x) public;
}
contract MutatorExample2 {
    uint internal integer = 5;
    function getInt() public view returns(uint) {
        return integer;
    }
    function update(uint x) public {
        integer = x;
    }
    function subtract(uint x, uint y) public pure returns(uint z) {
        z = y -x;
    }
}
