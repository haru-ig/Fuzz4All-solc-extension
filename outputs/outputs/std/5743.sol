pragma solidity ^0.8.0;
contract Array9{
    uint public x0;
    uint[] public x1;
    uint[] public x2;
    uint[] public x3;
    uint[] public x4;
    uint[] public x5;
    uint[] public x6;
    uint[] public x7;
    uint[] public x8;
    uint result = 0;
    address x10;
    address payee;
    constructor(address payable payee_){
        result = uint(-1);
        x1 = new uint[](8);
        address payee_1 = payee_;
        x2 = new uint[](8);
        x3 = new uint[](10);
        x4 = new uint[](10);
        x6 = new uint[](10);
        x6[1] = 3;
        x7 = new uint[](10);
        x8 = new uint[](10);
        x10 = payee_;
        x0 = 3;
        result = 3;
    }
    function arraySet(uint index, uint x) public {
        x0 = result;
        x1[index] = x;
        x2[index] = x;
    }
    function arrayAdd(uint x) public {
        result = result + x;
    }
    function arrayMul(uint x) public view returns (uint) {
        return 3;
    }
    function arrayMod(uint x) public view returns (uint) {
        return 1;
    }
    function callArray(uint length, uint offset) public returns (uint) {
        uint addr_0 = uint(uint);
        address x2;
        bool y0;
        bytes memory z;
        bool y1;
        uint[] memory y2;
        uint[] memory y3;
        string memory y4;
        bool
