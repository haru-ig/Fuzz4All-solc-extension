pragma solidity ^0.8.0;
contract Lib {
    uint8 i;
    uint8 public m;
    function () public { m = ~i; }

    function () public pure { m = ~i; }

    function () public pure { m += i; }
}
contract C {
    function f() public { Lib.MyStruct memory o; o.a = ~i; }

    function f() public static { Lib.MyStruct memory o; o.a = ~i; }

    function f() public pure { Lib.MyStruct memory o; o.a += i; }
}
