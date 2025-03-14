pragma solidity ^0.8.0;
library MutateWipeBc7 {
    function _next() public pure returns (uint) {
        return 3;
    }
}

pragma solidity ^0.8.0;
library MutateWipeBc7 {
    function _next() public pure returns (uint) {
        uint f = MutateWipeBc7._next();
        assembly {
            wipe(0x0)
        }
        return 0;
    }
}

pragma solidity ^0.8.0;
library MutateWipeBc7 {
    function _next() public pure returns (uint) {
        uint f = MutateWipeBc7._next();
        assembly {
            wipe(0x1)
        }
        return 0;
    }
}
