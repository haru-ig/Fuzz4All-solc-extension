pragma solidity ^0.8.0;
library UintWrapper {
    uint constant X = 1;
    function x() pure public returns (uint) {
        uint y = X;
        y -= X;
        return y;
    }
}

pragma solidity ^0.8.0;
library UintWrapper {
    uint constant X = 65535;
    function x() pure public returns (uint) {
        return uint(X / 2 + 222) * 222;
    }
}
