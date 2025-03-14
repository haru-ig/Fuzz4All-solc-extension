pragma solidity ^0.8.0;
contract ArrayMutationsB is ArrayMutationsA {
    modifier onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            isMutated = true;
            _;
        } else {
            require(false);
        }
    }
}
