pragma solidity ^0.8.0;
library Lib {
    struct MyStruct { uint8 a; }

    function mutator(uint32 x) internal returns (MyStruct memory) {
        MyStruct memory x_copy = x;
        mutator(x_copy);
        x_copy.a--;
        x_copy.a--;
        return x_copy;
    }
}
