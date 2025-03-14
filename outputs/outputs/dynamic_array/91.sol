pragma solidity ^0.8.0;
interface IB {}
contract A {
    IB[] ibArray;
    IB[] ibArray2;
    IB[] ibArray3;
    IB[] ibArray4;
}
contract B is A { }
