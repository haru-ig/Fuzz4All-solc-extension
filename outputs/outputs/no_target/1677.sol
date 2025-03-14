pragma solidity ^0.8.0;
library Mutate0015b {
    uint256 input = 0;
    function m() {
        input = input + 1;
    }
}

pragma solidity ^0.8.0;
library Mutate0015b {
    function m() external {
        MuteExternal();
    }

    function MuteExternal() external {}
}
