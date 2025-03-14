pragma solidity ^0.8.0;
contract A
{

}
contract B {
    function f(uint x) public pure returns (uint,uint)
    {
        return (a(x),b(x));
    }
    function a(uint x) public pure returns(uint b) {
        if(x>10) revert();
        if (x % 2 == 0) return 1;
        if (x % 3 == 0) return 11;
        if (x % 4 == 0) return 12;
        if (x % 5 == 0) return 13;
        return x + 1;
    }
    function b(uint x) public pure returns(uint b) {
        if(x>10) revert();
        if (1 % 2 == 0) return 1;
        if (1 % 3 == 0) return 11;
        if (1 % 4 == 0) return 12;
        if (1 % 5 == 0) return 13;
        return x + 1;
    }
}
