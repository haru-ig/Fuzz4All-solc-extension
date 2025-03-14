pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5 {
    function A(uint256 _arrSize) public {}
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal {
        arr[idx] = (255 ** 255)/(val*3600*(3600*(3600/(255**255)))))*255;
    }
}
contract B{
    function B(uint256 _arrSize) public {}
    function set(uint256[] storage arr, uint256 idx,uint256 val) internal returns(uint256) {
        arr[idx] = val;
        return idx+1;
    }
}
contract C{
    function C(uint256 _arrSize) public {}
    function get(uint256[] memory arr, uint256 idx) internal returns(uint256) {
        uint256 x = arr[idx];
        return x;
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        uint256 tmp = get(arr, idx+1);
        set(arr, idx, val);
        set(arr, idx+1, val);
        set(arr, idx, get(arr, idx-1)-1);
    }
}
contract D is A{
    uint8 public b;
    function A(uint256 _arrSize) public {}
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        arr[idx] = B(41);
        uint20
