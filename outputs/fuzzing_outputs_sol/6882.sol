pragma solidity ^0.8.0;
contract LongRunning {
    receive() external pure {
        assembly {
        mstore(returndata, 3)
        }
    }
}
