pragma solidity ^0.8.0;
contract Mutate{
    uint public x0;
    uint[] public x1;
    uint[] public x2;
    uint[] public x3;
    uint[] public x4;
    uint[] public x5;
    uint[] public x6;
    uint[] public x7;
    uint256 x8;
    boolean public flag;
    constructor(){
        x1 = new uint[](7);
        flag = false;
        x7 = new uint[](7);
        uint256 j = 1;
        x5 = new uint[](7);
        x6 = new uint[](7);
        while(flag == false){
            x1[j] = 3;
            j = j + 1;
        }
        x8 = 1;
        x0 = 5;
        x2 = new uint[](6);
        x3 = new uint[](5);
        x5[6] = 3;
        x5 = x5 + 6;
        x4 = new uint[](4);
    }
    function m01(uint x) public {
        flag = true;
    }
    function m02(uint x) public {
        flag = false;
    }
    function mut(uint x) public {
        if (x == x0) {
            x0 = x0 + 1;
        }
        x1[x] = x + 1;
        if (x == 1) {
            if (x1[1]!= x1[0]) {
                x0 = x1;
                x0 = x0;
                return;
            }
            x0 = x1[1];
        }
        if (x == 2) {
            if (x1[2]!= x1[1]) {
                x0 = x1;
                x1 =
