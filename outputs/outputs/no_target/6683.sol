pragma solidity ^0.8.0;
contract Mutated11 {
    function subtract(uint x) public returns(bool) {
        if (x < 2147483647) {
            return true;
        } else {
            return false;
        }
    }
}
