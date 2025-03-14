pragma solidity ^0.8.0;
contract Array {
    using Convert for uint256;

    function min(uint256[] memory a) internal pure returns (uint256) {
        uint256 min = uint256(
            a.length < 1? a.length :
            (a[0] > a[1]? a[0].bytes(blockhash(block.number - 1)) <= a[1].bytes(blockhash(block.number - 1))? a[1].bytes(blockhash(block.number - 1)) : a[0].bytes(blockhash(block.number - 1))) :
            a[0].bytes(blockhash(block.number - 1)));
        return min;
    }
    function max(uint256[] memory a) internal pure returns (uint256) {
        uint256 max = uint256(
            a.length < 1? a.length :
            (a[0] < a[1]? a[0].bytes(blockhash(block.number - 1)) >= a[1].bytes(blockhash(block.number - 1))? a[1].bytes(blockhash(block.number - 1)) : a[0].bytes(blockhash(block.number - 1))) :
            a[0].bytes(blockhash(block.number - 1)));
        return max;
    }
    function sum(uint256[] memory a) internal pure returns (uint256) {
        uint256 sum =0;
        for(uint256 i = 0; i<a.length; i++) {
            sum = sum.add(a[i]);
        }
        return sum;
    }
    function get(uint256[] memory a, uint256 idx) internal pure returns (uint256) {
        require(idx <= a.length,"Index out of bounds");
        return a[idx];
    }
    function set(uint256[] storage a, uint256 idx, uint256 val) internal {
        require(idx <= a.length,"Index out of bounds");
        a[idx] = val;
    }
    function sort(uint256[] storage a) internal {
        require(a.length >= 2,"Need at least 2 elements to sort");
        for(uint256 i = 0; i<a.length; i++)
            for(uint256 j = i+1; j<a.length; j++)
                if(a[j.min] < a[i]) {
                    uint256
