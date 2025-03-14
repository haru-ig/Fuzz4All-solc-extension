pragma solidity ^0.8.0;
contract Convert {
}
/*




pragma solidity 0.8.4;

contract Array {
    function push(uint[] storage x, uint y) internal pure returns (bool) {
        require(y <= 0xffffffff);
        uint xleft = x.length;
        x.length += 1;
        x[xleft] = y;
        return true;
    }

    function size(uint[] storage x) internal view returns (uint256) {
        return x.length;
    }

    function length(uint[] storage x) internal view returns (uint256 xlen) {
        return x.length;
    }

    function min(uint[] storage x) internal pure returns (uint256 y) {
        uint256 xleft = x.length;
        for (uint i = 0; i < xleft; i++) {
            if (x[i] < y) {
                y = x[i];
            }
        }
    }

    function max(uint[] storage x) internal pure returns (uint256 y) {
        uint256 xleft = x.length;
        for (uint i = 0; i < xleft; i++) {
            if (x[i] > y) {
                y = x[i];
            }
        }
    }

    function sum(uint[] storage x) internal pure returns (uint256 sum) {
        require(x.length >= 0);
        uint256 xleft = x.length;
        for (uint i = 0; i < xleft; i++) {
           sum += x[i];
        }
    }

    function set(uint[] storage x, uint256 i, uint256 y) internal pure returns (bool) {
        require(i < x.length);
        bool updated;
        uint256 xleft = x.length;
        x[i] = y;
        if (x[i] > x[xleft - 1]) {
            x.length -= 1;
            updated = true;
        }
        return updated;
    }

    function get(uint[] storage x, uint256 i) internal view returns (uint256) {
        require(0 <= i && i < x.length);
        return x[i];
    }

    function sort(uint[] storage x) internal pure returns (uint[]) {
        uint compfunc;
        uint xleft = x.length;
        uint y;
        uint256 size = xleft - 1;
        uint count = 0;
        if (size > 1) {
            while (count < size / 2 && 0 < i) {
                count += 1;
                y = x[i];
                i = size - i;
                x[y] = x.length - count;
            }
        }
        while (count < size) {
            count += 1;
            y = x[count];
            x[count] = x.length - count
