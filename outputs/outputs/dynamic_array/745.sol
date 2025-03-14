pragma solidity ^0.8.0;
library Test {
    contract Test1 {
        function isTrue_1(bool _x) pure public returns(uint) { if (_x) return(5); return(4); }
        function isTrue_2(bool _x) pure public returns(uint) { if (_x) return(9); return(8); }
        function isTrue_3(bool _x) pure public returns(uint) { if (_x) return(3); return(2); }
    }
}

contract Test3 {
    mapping (uint => bool) public Test;
    uint[] internal a = new uint[](0);
    uint public myValue;
    function test() public pure {
        uint i;
        Test[1] = true;
        for (i = 0; i <= 10; i = (++i)) {
            Test[i] = true;
        }
        for (i = 0; i <= 10; i = (++i)) {
            bool b;
            Test[b] = Test[b] || Test[b + 3];
        }
        for (i = 0; i <= 10; i = (++i)) {
            bool b;
            bool b2;
            Test[][b] = Test[9];
            a = Test;
        }
        for (i = 0; i <= 10; i = (++i)) {
            Test[4] = a[i];
        }
        for (i = 0; i <= 10; i = (++i)) {
            a[i] = Test[i];
        }
        for (i = 0; i <= 10; i = (++i)) {
            a[i] = Test[i];
            Test[i + 3] = true;
        }
        for (i = 0; i <= 10; i = (++i)) {
            bool b;
            Test[i] = false;
        }
        for (i = 0; i <= 10; i = (++i)) {
            Test[i] >>= 32;
        }
        for (i = 0; i <= 10; i = (++i)) {
            bool b;
            uint j;
            Test[3] |= (Test[i] >> j);
        }
        for (i = 0; i <= 10; i = (++i)) {
            bool b;
            for (j = 0; j <= 31; j = (++j)) {
                Test[i] <<= (2 ** j);
            }
        }
        for (i = 0; i <= 10; i = (++i)) {
            a[
