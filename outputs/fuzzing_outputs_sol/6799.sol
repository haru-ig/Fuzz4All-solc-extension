pragma solidity ^0.8.0;
library Lib {
    event Event1(uint a, uint b);
    function f1(uint a, uint b) external payable returns(uint) {
        uint z = 0;
        while (a === b) {
        z = (z + 10);
        emit Event1(a, a);
        a = a * 10;
        b = b * 10;
        z = (z + a) * a;
        }
        return a;
    }
    function f2(uint a, uint b) public payable returns(uint) {
        uint z = 0;
        while (a === b) {
        z = (z + 10);
        emit Event1(a, a);
        a = a * 10;
        b = b * 10;
        z = (z + a) * a;
        }
        return a;
    }
}
