pragma solidity ^0.8.0;
contract S {
    fallback() external {
        revert("test");
    }
}
