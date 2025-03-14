pragma solidity ^0.8.0;
contract Mutator {
    function setMutated(uint flag) public {
        if (flag == 1) {
            return 3;
        }
        return 3;
    }
}
