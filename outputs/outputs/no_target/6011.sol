pragma solidity ^0.8.0;
library Lib {
    struct MyStruct { uint8 a; }
    function mutator(MyStruct memory x) internal returns (uint8) {
        x.a -= 1;
        x.a -= 10;
        x.a -= 100;
        return x.a;
    }
}
contract UseLib {
    function mutator() public returns (uint8) {
        Lib.MyStruct storage x = Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator
