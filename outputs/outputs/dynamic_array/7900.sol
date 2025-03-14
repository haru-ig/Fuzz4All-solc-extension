pragma solidity ^0.8.0;
contract Test25 {
    uint8[5] public foo;
    uint32[4] public bar;
    function f() public payable {
        unchecked {
            bar = bar;
        }
        foo = foo;
        bar = bar;
    }
}
