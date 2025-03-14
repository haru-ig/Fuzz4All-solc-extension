pragma solidity ^0.8.0;
contract SemanticTest_v5a {
    uint256[] x = [0];
    constructor() public {
    require(x.length == 0, "Initial check");
    x[1] = 1;
    x[4294967296] = 4294967296;
    require(x.length == 5, "Second check");
    }
}
