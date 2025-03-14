pragma solidity ^0.8.0;
contract SemanticTest_v6a {
    uint256[1] x = [0];
    constructor() public {
    x[1] = 1;
    require(x.length == 0, "Initial check");
    }
}
