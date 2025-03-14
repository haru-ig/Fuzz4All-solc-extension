pragma solidity ^0.8.0;
contract Test {
    struct MyStruct { uint16 a; }
    function f(Lib.MyStruct memory) public {
        uint16 x = -12345;
        uint16 y = 200;
        Lib.MyStruct memory s;
        s.a = 0;
        emit S(s);
        uint256 f = -10;
        emit S(uint256(f));
        uint256 g = uint256(x);
        emit S(uint256(x));
        emit S(address(s));
        s.a = s.a + f;
        uint16 h = 100000;
        emit S((h));
        emit S(uint16(g));
        emit S(Lib.MyStruct(0));
    }
    function g(Lib.MyStruct memory) public {
        uint256 x = -1234598;
        uint256 y = 200;
        Lib.MyStruct memory s;
        s.a = 0;
        emit S0((x));
        emit S1(uint256(x));
        emit S1(Lib.MyStruct(0));
        emit S2(Lib.MyStruct(0));
        s.a = s.a + 10;
    }
}
contract C
{
}
contract D
{
}
contract E
{
}
contract L
{
    struct S { S(uint) __slot__; }
    function __slot__(uint) public { }
}
