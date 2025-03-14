pragma solidity ^0.8.0;
contract A {
    function a() public pure { }
    function b() public view returns (int) {
        A b = A(0x3f45db35614dd7c87b8a23477a152fa5215327a4);
        int c = b.a();
        b.*;
        return c;
    }
}
