pragma solidity ^0.8.0;
contract Call {
    function f(bool cond) external pure {
        if (cond) {
            return;
        }
        assembly {
            calldatacopy(x0, 0, calldataload(0))
        }
        x1;
    }
}
