pragma solidity ^0.8.0;
contract Caller2 {
    function sum(int _x, int _y) pure internal returns (uint){
        uint x = (uint(_x)); uint y = (uint(_y)); return (x+y);
    }

    function add(uint a, uint b) pure internal returns (uint){
        return (a+b);
    }

    function main() public{
        uint a = add(10,20); uint b = add(10,20); assert (a + b == 30);
        uint c; uint d;
        (c, d) = Caller2.callForGas(20);
        for(uint i = 0; i < 10; i++)

        {
            uint e; uint f;
            (e, f) = Caller2.callForGas(10);
            assert (e + f == 10);
        }
    }
}
