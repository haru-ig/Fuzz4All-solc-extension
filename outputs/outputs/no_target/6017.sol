pragma solidity ^0.8.0;
library Lib {
    struct MyStruct { uint8 a; }
    function mutator(MyStruct memory x) internal returns (MyStruct memory) {
        x.a *= 1;
        return x;
    }
}
contract Lib {
    struct MyStruct { uint8 a; }
    function mutator(MyStruct memory x) internal returns (MyStruct memory) {
        x.a *= 2;
        x.a += 0;
        return x;
    }
}
