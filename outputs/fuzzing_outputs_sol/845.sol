pragma solidity ^0.8.0;
contract Complex {
    uint96 constant a = 121;
    function nonReturnFallback(uint256 _arg, uint32[] memory _data) external returns (uint256) {
        return call_withoutRetval(this, 1);
    }
    function nonReturnFallback2(uint2 _data) public nonReturnFallback(uint2(a)) {}
    function nonReturnFallback3(uint3 _data) public nonReturnFallback(uint2(_data)) {}
    function call_nonReturnFallback(uint8, uint96) private pure returns (uint8) {
        return 0;
    }
}
