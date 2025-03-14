pragma solidity ^0.8.0;
library Lib {
    struct MyStruct { uint8 a; }
    function mutator(MyStruct memory x) internal returns (MyStruct memory) {
        x.a -= 1;
        x.a -= 10;
        x.a -= 100;
        Lib.MyStruct memory ux = x;

        ux.a -= 10;
        ux.a -= 100;
    }
}
