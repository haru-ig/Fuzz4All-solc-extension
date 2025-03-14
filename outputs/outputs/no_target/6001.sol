pragma solidity ^0.8.0;
library Lib {
    struct MyStruct { uint8 a; }
    function mutator(MyStruct memory x) internal returns (MyStruct memory) {
        x.a -= 10;
        return x;
    }
}
contract C {
    function f() public returns (address a) {
        MyStruct memory s;
        a = Lib.mutator(s);
    }
}
