pragma solidity ^0.8.0;
contract Modul {
    uint constant test = 1000;
    function add(uint num1, uint num2) public pure returns (uint) {
        num1 ++;
        return num1;
    }
    function div(uint a, uint b, uint c) public pure returns (uint) {
        a = a * (b / b) + c;
        return a;
    }
}
