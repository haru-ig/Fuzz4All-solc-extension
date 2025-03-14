pragma solidity ^0.8.0;
contract InlineAssembly6 {
    uint x = 0;
    function test() public pure returns(bool) {
        bool b = false;
        b1();
        boolean b1;
        asm {
            b1 := 100000000
        }
        return b;
    }
    function b1() public pure{
        uint x;
        uint y;
        uint z;
        uint w;
        uint x;
    }
}
