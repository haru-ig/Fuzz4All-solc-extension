pragma solidity ^0.8.0;
contract A {
    IERC20Metadata public immutable token1;
    constructor(address owner) {
        token1 = IERC20Metadata(owner);
    }
}
