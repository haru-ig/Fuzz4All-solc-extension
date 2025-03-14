pragma solidity ^0.8.0;
contract Mutator {
    function setMutated(uint flag) public {
        uint mutated;
        if(flag == 1) {
            mutated = 3;
        } else {
            mutated = 3;
        }
        return;
    }
}
