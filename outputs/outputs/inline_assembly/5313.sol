pragma solidity ^0.8.0;

contract SimpleIB {
    uint64 IB;

    constructor(uint64 _value) public {
        IB = _value;
    }


    function increase(uint64 value) public returns (uint64 IB_) {
        IB_ = IB + value;
    }


    function output() public view returns (uint64) {
        return IB;
    }
}
contract ComplexIB {


    uint64 constant IB = 27000000000000000;
    uint64 constant IB2 = IB * 30;
    uint64 IB3;

    constructor() public {}


    function multiply() public view returns (uint64) {
        return IB + IB2 + IB2 + IB2;
    }


    function output() public view returns (uint64 IB_) {
        IB_ = IB;
    }
}
contract TestIB {
    function testContract(SimpleIB sI) public {
        uint256 IC = sI.increase(1);
        uint256 IBo = sI.output();
        uint256 IC_ = IC * sI.increase(IC);
        uint256 IC2 = sI.increase(IC);
        assertEq(IC + 1, IC_);
        assertEq(IC * 2, IC2);
        IC3 = sI.increase(I + 3);
        assertEq(6, sI.increase(IC_));
        assertEq(IC_ +
