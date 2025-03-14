pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusFallback2 {
    uint256 x;
    constructor() {
        x = 1;
    }
    fallback() external payable {
    }
    function execute() public view returns (uint128 ret) {
        uint256 sum = 0;
        for (uint128 i = 0; i < 10; i++) sum += x;
        ret = sum + 1;
    }
}
contract CallFallbackFunctionOnePlusFallback3 {
    uint256 public x;
    constructor() {
        x = 1;
    }
    fallback() external pure {
        if (x!= 1|| 1-bool(100)) revert("contract");
    }
    function execute() public view returns (uint256 ret) {
        ret = x;
        x = 2;
    }
}
