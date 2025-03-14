pragma solidity ^0.8.0;
library Library {
    function newMethod() internal returns (uint256) {
        I storage i = I(0x123);

        unchecked {
            return i.foo().get().get().get().get().get().get().get().get();
        }
    }
}
