pragma solidity ^0.8.0;
contract Test30005 {
    uint32[5] public aFirst;
    uint32[5] public aSecond;
    uint32[5] public aThird;
    uint32 public aFirst1;
    uint32 public aSecond1;
    uint32 public aThird1;
    constructor (uint32 a) public {
        aFirst = new uint32[](1);
        aSecond = new uint32[](2);
        aThird = new uint32[](3);
        aFirst = (aFirst1, aSecond1, aThird1);
      emit Log();
    }
    fallback () external {
        emit Mutate();
    }
    event Log ();
    event Mutate ();
}


contract Test30006 {
    uint32[] private x;
    uint public y;
    address public a;
    address b;


    constructor (uint32[] memory x, uint32 y, address a) public {
        this.x = x;
        this.y = y;
        this.a = a;
        this.b = contract(0);
    }

    function () external {
        uint32[] memory x0 = new uint32[](2);
        x0[0] = this.x[0];
        uint32[] memory x1 = new uint32[](3);
        x1[1] = this.x[1];
        uint32[] memory x2 = new uint32[](4);
        x2[2] = this.x[2];
        uint32[] memory x3 = new uint32[](5);
        x3[3] = this.x[3];
        uint32[] memory x4 = new uint32[](6);
        x4[4] = this.x[4];
         emit Log
