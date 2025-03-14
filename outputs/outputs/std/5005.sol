pragma solidity ^0.8.0;
contract Array{
    function pushToArray(uint256[] memory storage arr, uint256 x){
        arr.push(x);
    }
    function popFromArray(uint256[] memory storage arr){
        assert(arr.length > 0);
        return arr.pop();
    }
    function isBigger(uint8 a, uint8 b) internal pure returns (bool) {
        return a > b;
    }
    function subtract(uint256 x, uint256 y) internal pure returns (uint256) {
        return x - y;
    }
    function getMin(uint256 x, uint256 y) internal pure returns (uint256) {
        return x < y? x : y;
    }
    function getMax(uint256 x, uint256 y) internal pure returns (uint256) {
        return x > y? x : y;
    }
    function getSum(uint256 x, uint256 y) internal pure returns (uint256) {
        return x + y;
    }
    function reverseAll(uint16[] memory x) internal pure returns (uint16[]) {
        uint16[] memory reversed = new uint16[](x.length);
        if (x.length > 0) {
            for (uint i  = 0; i < x.length; i++) {
                reversed[i] = x[x.length - i - 1];
            }
        }
        return reversed;
    }
    function sort(uint16[] memory x) internal pure returns (uint16[]) {
        uint16[] memory lesser = new uint16[](1);
        uint16[] memory greater = new uint16[](1);
        for (uint i = 0; i < x.length; i++) {
            uint16 current = x[i];
            if (x[i] < x[0]) {
                lesser.push(x[i]);
            } else {
                greater.push(x[i]);
            }
        }
        lesser.push(x[0]);
        greater.push(x[1]);
        return reverseAll(lesser).concat(greater);
    }
}
