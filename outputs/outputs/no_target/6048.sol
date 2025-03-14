pragma solidity ^0.8.0;
contract C {}

pragma solidity ^0.8.0;
contract C {}
contract D {
    function f(Lib.MyStruct x) public pure {
        x.a = 0xaa;
        x.b = 0x55555525;
    }
}
