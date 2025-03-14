pragma solidity ^0.8.0;
contract Array {
    function get(uint[] storage x) public view returns (uint) {
        uint value = 0;
        for (uint i = 0; i < x.length; i++) {
            value += uint(x[i]);
        }
        return value;
    }
    function findMin(uint[] storage x) public view returns (uint) {
        uint min = x[0];
        for (uint i = 0; i < x.length; i++) {
            if (x[i] < min) min = x[i];
        }
        return min;
    }
    function findMax(uint[] storage x) public view returns (uint) {
        uint max = x[0];
        for (uint i = 0; i < x.length; i++) {
            if (x[i] > max) max = x[i];
        }
        return max;
    }
    function sum(uint[] storage x) public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < x.length; i++) {
            sum += x[i];
        }
        return sum;
    }
    function read(address[] storage x) public view returns (address) {
        address value = address(0);
        for (uint i = 0; i < x.length; i++) {
            value = x[i];
        }
        return value;
    }
    function write(uint[] storage x, uint64 a) public {
        x[x.length-1] = a;
    }
    function swap(uint x, uint y) public
    {
        uint temp = uint(x);
        return_zero(x, y);
        x[y-1] = temp;
    }
    function set(uint[] storage x, uint i, uint64 a) public {
        x[i]=a;
    }
    function get(uint i, uint[] memory x) public view returns (uint) {
        return uint(x[i]);
    }
    function return_zero(uint x, uint y) private view {
        return_one(x);
        return_one(y);
    }
    function return_one(uint x) private pure {
        x++;
    }
}
