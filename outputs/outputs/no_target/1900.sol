pragma solidity ^0.8.0;
library MutatedUintWrapper {
    uint constant X = 1;
    function x() pure public returns (uint) {
        return X;
    }
}

pragma solidity ^0.8.0;
library MutatedUint256 {
    uint constant X = 1;
    function x() pure public returns (uint) {
       unchecked {
               uint x = x + 1;
        }
    }
}
