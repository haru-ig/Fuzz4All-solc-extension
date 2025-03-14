pragma solidity ^0.8.0;
contract Mutated12 {
    function subtract(uint x) public pure returns(bool) {
        if (x <= 2147483647){
            return true;
        } else {
            return false;
        }
    }
}
