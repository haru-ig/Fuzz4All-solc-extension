pragma solidity ^0.8.0;
contract Modul {
    uint constant test2 = 98;
    uint constant test3 = 100;
    uint constant test4 = 0;
    uint constant test = 1000;
    function sum(uint[2] memory _arr) pure public returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < 2; i++) {
            sum += mod(_arr[i], 2);
            sum = add(div.div(sum, 2), 100);
        }
        return sum;
    }
    function mod(uint a, uint b) pure public returns (uint) {
        uint temp = a % b;
        return temp;
    }
    function add(uint a, uint b) pure public returns (uint) {
        uint temp = a + b;
        return temp;
    }
    function div.div(uint a, uint b) pure public returns (uint) {
        uint sum = b * (a / b) + 100;
        return sum;
    }
}
