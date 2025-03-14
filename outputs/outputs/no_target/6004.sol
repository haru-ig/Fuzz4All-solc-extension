pragma solidity ^0.8.0;
library Lib {
    struct MyStruct {
        uint8 a
        uint8 b;
    }
    function mutator(MyStruct storage x) internal returns (MyStruct storage) {
        x.a -= 100;
        x.b -= 1;
        x.b -= 10;
        return x;
    }
}

pragma solidity ^0.8.0 + ABIEncoderV2 + unchecked;
contract A {
    struct MyStruct { uint8 a; }
    function mutator(MyStruct memory x) internal returns (MyStruct memory) {
        x.a -= 1;
        return x;
    }
}
contract B {
    struct MyStruct { uint8 a; }
    function mutator(MyStruct storage x) internal returns (MyStruct storage) {
        x.a -= 10;
        return x;
    }
}
