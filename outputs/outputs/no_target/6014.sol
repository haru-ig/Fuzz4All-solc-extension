pragma solidity ^0.8.0;
library Lib {
    struct MyStruct { uint8 a; }
    function mutator(MyStruct memory x) internal returns (MyStruct memory) {
        x -= x;
        x -= 1;
        x -= MyStruct(1);
        x -= 10;
        x -= 100;
        x -= myStruct(1);
        x -= 10;
        x -= 100;
        return x;
    }
}
contract C {
    function mutator() public return (uint8 i) {
        return i;
    }
}
