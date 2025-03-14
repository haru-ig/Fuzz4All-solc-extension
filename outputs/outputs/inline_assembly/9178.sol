pragma solidity ^0.8.0;
contract B {
    uint constant public _uint32 = 16**60;
    function mutated(uint x) public pure returns (uint) {
        return uint(x) ^ uint(_uint32) ^ uint(_uint32) ^ uint(x);
    }
}
pragma solidity ^0.8.0;


contract A is B {
    uint constant public _uint32 = 16**60;
    mapping (uint => uint) public a;

    function test() public view returns (uint) {
        return uint(_uint32)!= a[uint(uint(_uint32)^uint(_uint32)^a[uint(uint(_uint32)^uint(_uint32)])])?_uint32:0;
    }
    function mutated(uint x) public pure returns (uint) {
        return uint(_uint32)!= a[uint(uint(_uint32)^uint(_uint32)^x)]?_uint32:0;
    }
}
contract C is A {
    mapping (uint => uint) b;

    function test() public view returns (uint) {
        return uint(_uint32)!= b[uint(uint(_uint32)^uint(_uint32)^a[uint(uint(_uint32)^uint(_uint32)])?_uint32:0][uint(uint(_uint32)^uint(_uint32)^a[uint(uint(_uint32)^uint(_uint32)])^x)]?_uint32:0;
    }
    function mutated(uint x) public pure returns (uint) {
        return uint(_uint32)!= b[uint(uint(_uint32)^uint(_uint32)^_uint32^uint(_uint32)^b[uint(uint(_uint32)^uint(_uint32)^_uint32^uint(_uint32)^x)]]^uint(uint(_uint32)^uint(_uint32)^_uint32^uint(_uint32)^a[uint(uint(_uint32)^uint(_uint32)])^x)]?_uint32:0;
    }
}
contract D is A {
    uint constant public _uint32 = 16**60;
    mapping (uint => uint) public a;

    function test() public view returns (uint) {
        return uint(_uint32)!= a[uint(uint(_uint32)^uint(_uint32)^a[uint(uint(_uint32)^uint(_uint32)])^x)]?_uint32:0;
    }
    function mutated(uint x) public
