pragma solidity ^0.8.0;
contract A  {
    uint8 dynamicArray[20][11];
    uint8 non-dynamicArray;
    function f() public {
        dynamicArray = f(non-dynamicArray);
    }
    function g(uint8 _i, uint8 _j, uint8 _k) public returns (uint8){ return dynamicArray[_i][_j]; }
    function f(uint8 x) public returns (uint8[6]){ return dynamicArray[x]; }} contract B is C,A {
    function mul() public payable {
        super.mul;
    }
    function mul2() public payable {
        b1[3][4] = 0x00;
    }
}
