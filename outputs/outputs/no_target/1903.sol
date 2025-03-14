pragma solidity ^0.8.0;
contract UintWrapper {
    uint constant X = 1;
    function x() pure public returns (uint) {
        return X;
    }
    function y() pure public returns (uint memory, uint) {
        return (X, X);
    }
}

pragma solidity ^0.8.0;
contract UintWrapper {
    uint constant X = 1;
    uint constant Y = 2;
    function x() pure public returns (uint) {
        return X;
    }
    function y() pure public returns (uint) {
        return Y;
    }
}
