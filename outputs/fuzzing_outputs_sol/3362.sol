pragma solidity ^0.8.0;
contract S {
    fallback() public pure {
        revert("test");
    }
}
