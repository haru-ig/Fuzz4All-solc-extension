pragma solidity ^0.8.0;
interface I {
    function getData(uint k) external returns (uint256 x);
}
contract CallerFallbackFunction {
    receive() external payable { x = 2; }
    fallback() external payable {
    }
}
contract CallerFallbackFunctionTwo is CallerFallbackFunction {
    function getData(uint k) public returns (uint256 x) {
        x = uint256(uint160(this) >> 32);
    }
}
contract CallerFallbackFunctionThree is CallerFallbackFunction, I {
    function getData(uint) external pure returns (uint) {
        return 2;
    }
}
