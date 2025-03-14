pragma solidity ^0.8.0;
contract Mutated12 {
    function subtract(int x) public returns(bool) {
        if (x < -1073741678) {
            return true;
        } else {
            return false;
        }
    }
}
