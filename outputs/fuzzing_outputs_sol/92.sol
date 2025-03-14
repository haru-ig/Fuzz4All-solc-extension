pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionTwo {
    function getData(uint k) public pure returns (uint256 x) {
        return 2;
    }
    uint256 x;
    receive() external payable {   x = 2; }
    fallback() external payable { }
}
contract MyCallsCallAndFallbackFunction {
    function getData(uint k) public pure returns (uint256 x) {
        return 2;
    }
    uint256 x;
    receive() external payable {   x = 2; }
    receive() external { }
    fallback() external payable { }
}

contract MyCallsCallAndFallbackFunctionFour {
    function getData(uint k) public pure returns (uint256 x) {
        return 1;
    }
    uint256 x;
    receive() external payable {   x = 2; }
    receive() external payable { }
    fallback() external payable { }
}
contract MyCallsCallAndFallbackFunctionFive {
    function getData(uint k) public pure returns (uint256 x) {
        return 1;
    }
    uint256 x;
    receive() external payable {   x = 2; }
    fallback() external payable {}
}
contract MyCallsCallAndFallbackFunctionSix {
    function getData(uint k) public pure returns (uint256 x) {
        return 1;
    }
    uint256 x;
    receive() external payable {   x = 2; }
    fallback() external { }
}
contract MyCallsCallAndFallbackFunctionSeven {
    function getData(uint k) public pure returns (uint256 x) {
        return 1;
    }
    uint256 x;
    receive() external payable {   x = 2; }
    fallback() public pure { }
}
contract MyCallsCallAndFallbackFunctionEight {
    function getData(uint k) public pure returns (uint256 x) {
        return 1;
    }
    uint256 x;
    receive() external payable {   x = 2; }
    fallback() default external payable { }
}
contract MyCallsCallAndFallbackFunctionNine {
    function getData(uint k) public pure returns (uint256 x) {
        return 2;
    }
    uint256 x;
    receive() external payable {   x = 2; }
    fallback() public { }
}
