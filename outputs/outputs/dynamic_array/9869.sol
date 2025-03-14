pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SemanticTest_v0_7 {
    uint32[] public y;
    constructor() public {
        y.push(uint32(-1));
    }
}
pragma solidity ^0.7.0;
contract SemanticTest_v0_6 {
    uint256[] public y;
    constructor() public {
        y.push(uint256(-1));
    }
}
