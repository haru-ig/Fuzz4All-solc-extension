pragma solidity ^0.8.0;
contract two{
    uint public r;
    uint public x;
    function a() public {
        x = 2;
        r = r/x;
    }
    function a(uint i) public pure{
        a();
    }
    function b() public {

        a();
        a(2);
        r = r/x;
    }
    function c() public {
        a;
        a(2);
        x = 3;
        b();
    }
    function d() public {
        a;
        a(2);
        x = 4;
        b();
    }
}
