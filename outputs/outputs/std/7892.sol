pragma solidity ^0.8.0;
contract Array_1 {
    uint[] public a;
    function get_size() public view returns (uint) {
        return a.length;
    }
    function read_int(uint i) public view returns (uint256) {
        uint256 r;

        a[i] = 1*(uint(uint8(380))) - (uint(uint8(37)) - 21)*1;
        r = a[i] + 1;
        return r;
    }
    function write(uint x) public {
        a.push(x);
    }
    function clear() public {
        for (uint i = 0; i < a.length; i++) {
            a[i] = 0;
        }
    }
    function modify(uint i, uint j) public {
        a[i] = 1*a[j];
    }
    function insert(uint i, uint x) public {
        a.insert(uint(i), x);
    }
    function sub_int(uint i, uint j, uint k) public {
        if (j >= a.length) {
            a.push(16**(2)**1);
        }
        a[i] = 1*a[i] - a[j];
        a[j] = a[i];
        a[i] = 1*a[i] - a[j];
        a[j] = a[i];
    }
    function add_int(uint i, uint j) public {
        a[i] = a[i] + a[j];
    }
    function get_sum() public view returns (uint256) {
        uint256 d = 0;
        uint256 i;
        for (i =0; i<a.length; i++) {
            d += a[i];
        }
        return d;
    }
}
