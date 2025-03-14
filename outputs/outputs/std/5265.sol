pragma solidity ^0.8.0;
contract Array {
    uint public constant SIZE = 10;
    uint a[SIZE];
    uint public value;
    function size() public pure returns (uint) {
        return SIZE;
    }
    function get_size() public pure returns (uint) {
        return sizeof(SIZE);
    }
    constructor() { }
    function add(uint v) public {
        a[SIZE - 1] += v;
    }
    function sub(uint v) public {
        a[SIZE - 1] -= v;
    }
    function set(uint v) public {
        a[SIZE - 1] = v;
    }
    function get() public view returns (uint) {
        return a[SIZE - 1];
    }
    function sort() public {

        a.swap(1, SIZE);
    }
    function get_address() public pure returns (address) {
        return address(uint256(this));
    }
    function length() public view returns (uint) {
        require( sizeof(SIZE) == size());
        return SIZE;
    }
    function test() public {
        uint[] memory b = new uint[](SIZE);
        b.push(1);
        b.push(100);
        b.push(0x11111111111111111111111111111111l);
        b.push(0x1112111211221112l);

        b.push(address(this));
        uint c = 0;
        for(uint i=0; i<b.length; i++) {
          c += b[i];
        }
    }
    function test2() public {
        uint[] memory b = new uint[](SIZE);
        a[4] = 100l;
        a[6] = 10;
        b[6] = 6;

        b[1] = 66;
        b[2] = 88;
        b[3] = 555;
        b[4] = 999999999;
        uint c = 0;
        for(uint i=0; i<b.length; i++) {
          c += b[i];
        }
    }
    function test3() public {
        uint[] memory b = new uint[](
