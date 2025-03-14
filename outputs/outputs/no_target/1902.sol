pragma solidity ^0.8.0;
library Mod {
    function f() pure public returns (uint) {
        return 98 * UintWrapper.x() % (98 * 10 ** 19 - 1);
    }
}
