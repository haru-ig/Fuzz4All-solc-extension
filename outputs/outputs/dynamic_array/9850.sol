pragma solidity ^0.8.0;
contract SemanticTest_v5b {
    uint256[] x = [0];
    constructor() public {
    require(x.length == 0, "Initial check");
    x.push(1);
    x[3] = 3;
    x[4294967296] = 4294967296;
    x.push(4294967296);
    require(x.length == 6, "Second check");
    }
}
