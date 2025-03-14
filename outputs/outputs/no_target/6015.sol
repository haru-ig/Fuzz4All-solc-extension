pragma solidity ^0.8.0;
library Lib {
    struct MyStruct { uint8 a; }
    function mutator(MyStruct memory x) public returns (MyStruct memory) {
        x.a *= 1;
        x.a *= 10;
        x.a *= 2000;
        return x;
    }
}
