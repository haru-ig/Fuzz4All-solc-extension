pragma solidity ^0.8.0;
contract Test{
    uint a;
    function Test() public {
        a = 42;
    }
    function Test(uint b) public {
        a = a + b;
    }
    function Test(uint a, uint b) public {
        a = a - b;
    }
    function Test(uint a, uint b, uint z) public {
        a = a * b;
        a = a / b;
        a = a % z;
    }
    function Test(uint a, uint b, uint z, uint x) public {
        a = a * b;
        a = a / b;
        a = a % z;
        a = a - x;
    }
    function Test(uint a, uint b, uint z, uint x, uint y) public {
        a = a * b;
        a = a / b;
        a = a % z;
        a = a - x;
        a = a << y;
        a = a >> y;
    }
    function Test(uint a, uint b, uint z, uint x, uint y, uint z2) public {
        a = a * b >> z2;
        a = uint(1) / a;
    }
    function Test(uint a, uint b, uint z, uint x, uint y, uint z2, uint _31) public {
        if (a > 0) {
            a = uint(1) / a >> _31;
        }
    }
    function Test(uint a, uint) public {
        a = uint(1) / a;
    }
}
