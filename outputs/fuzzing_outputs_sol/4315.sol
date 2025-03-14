pragma solidity ^0.8.0;
contract NewMutatedSimpleFallbackCallerModified {
    uint internal x = 10;
    function () external payable {
        x = 12;
    }
    receive() external payable {

    }
}
