pragma solidity ^0.8.0;
contract Fallback {
    fallback() external pure {
        assembly {
            revert(0, 1, 0, 0)
        }
    }
}
