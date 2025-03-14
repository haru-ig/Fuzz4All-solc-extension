pragma solidity ^0.8.0;
library MutatingCaller2 {
    function revert() external payable {
        revert("message");
    }
}
