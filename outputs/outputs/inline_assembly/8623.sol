pragma solidity ^0.8.0;
contract Pseudo {
    uint constant test2 = 98;
    uint constant test3 = 100;
    uint constant test4 = 0;
    uint constant test = 1000;
    function sum(uint[2] memory _arr) public pure returns (uint) {
        uint sum = 0;
        for(uint i=0; i<2; i++){
            sum += _arr[sum + 1];
            sum += 100;
        }
        return sum;
    }
    function div(uint a, uint b, uint c) public pure returns (uint) {
        uint sum = b * (a /b) + c;
        return sum;
    }
}
