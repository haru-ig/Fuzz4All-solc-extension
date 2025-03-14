pragma solidity ^0.8.0;

contract MutableArray {
    address[] memory a;
    uint256[] memory b;
    function set(address addr, uint256 n) public {
        a.push(addr);
        b.push(n);
        a.push(addr);
        b.push(n);
    }
    function get(uint64 i) public view returns (address a, uint256 b) {
        return (a[i], b[i]);
    }
    function max() public view returns (uint256) {
        uint256 max = uint256(uint160(address(0)));
        for (uint256 i=1; i<a.length; i++) {
            uint256 v = uint256(uint160(a[i]));
            if (v > max) {
                max = v;
            }
        }
        return max;
    }
    function min() public view returns (uint256) {
        uint256 min = uint256(uint160(address(0)));
        for (uint256 i=1; i<b.length; i++) {
            uint256 v = uint256(uint160(b[i]));
            if (v < min) {
                min = v;
            }
        }
        return min;
    }
    function sum() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i=0; i < a.length; i++) {
            sum += b[i];
        }
        return sum;
    }
    function reset() public {
        uint256 siz = a.length;
        for (uint256 i = 0; i < siz; i++) {
            a.pop();
            b.pop();
        }
    }
}
