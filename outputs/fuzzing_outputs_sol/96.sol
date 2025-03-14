pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionTwo {
    uint256 private x;
    receive() external payable { x = 1; }
    fallback() external payable { }
}

pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionOne {
    uint256 private x;
    receive() external payable { x = 1; }
}

pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionZero {
    function _foo() public pure returns (uint256) {
        return 1;
    }
    uint256 x = _foo();
}
