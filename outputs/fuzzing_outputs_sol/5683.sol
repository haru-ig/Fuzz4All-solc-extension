pragma solidity ^0.8.0;
contract semanticallyequivalent11
{
    uint16 public y = 2;
    function test()public {
        y = 1;
    }
}
contract semanticallyequivalent12
{
    uint16 internal y = 2;
    function test()internal {
        y = 1;
    }
}
contract semanticallyequivalent13
{
    uint16 protected y = 2;
    function test()protected {
        y = 1;
    }
}
contract semanticallyequivalent14
{
    uint16 private y = 2;
    function test()private {
        y = 1;
    }
}
contract semanticallyequivalent15
{
    uint16 constant y = 2;
    function test()constant internal {
        y = 1;
    }
}
contract semanticallyequivalent16
{
    uint16 constant public y = 2;
    function test()constant internal {
        y = 1;
    }
}
contract semanticallyequivalent17
{
    bytes y;
    function test()public {
        byte array[] memory ary = new byte[](0);
        y = bytes(ary);
    }
}
contract semanticallyequivalent18
{
    bytes private y;
    function test()private {
        byte array[] memory ary = new byte[](0);
        y = bytes(ary);
    }
}
contract semanticallyequivalent19
{
    bytes constant public y;
    function test()constant internal {
        byte array[] memory ary = new byte[](0);
        y = bytes(ary);
    }
}
contract semanticallyequivalent20
{
    bytes constant private y;
    function test()constant internal {
        byte array[] memory ary = new byte[](0);
        y = bytes(ary);
    }
}
