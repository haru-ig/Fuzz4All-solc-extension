pragma solidity ^0.8.0;
contract Array {
    function length(uint256[] memory _a) public returns (uint) {
        return uint(_a.length);
    }
    function at(uint256 i, uint256[] memory x) public view returns (uint256) {
        return x[i];
    }
    function append(uint256 n, uint256[] memory a) public {
        a.push(n);
    }
    function getmin(uint256[] memory a) public pure returns (uint256) {
        uint min = a[0];
        for (uint i = 1; i < a.length; i++) {
            if (a[i] < min) min = a[i];
        }
        return min;
    }
    function getmax(uint256[] memory a) public pure returns (uint256) {
        uint256 max = a[0];
        for (uint i = 1; i < a.length; i++) {
            if (max < a[i]) max = a[i];
        }
        return max;
    }
    function add(uint256[] memory a, uint256[] memory b) public view returns (uint256[]) {
        uint256[] memory result = new uint256[](length(a) + length(b) + 1);
        uint256 i = 0;
        while (i < length(a)) {
            result[i + 1] = add(a[i], b[i]);
            i++;
        }
        result[0] = add(a[i], b[i]);
        i++;
        for (;i < a.length;i++) {
            result[i + 1] = add(a[i], 0);
        }
        result[a.length + 1] = 0;
        return result;
    }
    function max(uint256[] memory a) public pure returns (uint256) {
        uint256 max = a[0];
        for (uint i = 1; i < a.length; i++) {
            if (a[i] > max) max = a[i];
        }
        return max;
    }
}
