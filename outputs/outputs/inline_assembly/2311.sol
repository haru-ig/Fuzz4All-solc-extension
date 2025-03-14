pragma solidity ^0.8.0;
contract Contract1 {
    function multiply(uint a, uint b) public returns (uint) {
        a = a * b;
        uint c = a * b;
        return c;
    }
    function multiply2(uint a, uint b) public returns (uint) {
        uint c = a * b;
        return c * c;
    }
}
