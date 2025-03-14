pragma solidity ^0.8.0;
contract Mutating {
    function setMutated(uint flag) public {
        if(flag == 1) {
            uint mutated;
            mutated *= 2;

            return;
        } else {
            uint mutated;
            mutated += 3;
            return;
        }
    }
}
