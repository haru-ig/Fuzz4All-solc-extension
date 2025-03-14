pragma solidity ^0.8.0;
contract MixedContactsExample885 {
    uint public constant test = 42;
    uint public constant test2 = 9486545554687665465;

    uint x;
    uint y;
    bytes32 public testHash;
    constructor() {
        x;
        y;
        testHash;
    }
    function foo() public {
        x = x + 1;
        y = y * test + 2;
    }
}
contract MixedContactsExample886 {
    uint public constant test = 42;
    uint public constant test2 = 9486545554687665465;

    uint x;
    uint y;
    bytes32 public testHash;
    constructor() {
        x = x + 1;
        y = y / test2 + 2;
    }
    function foo() public {
        fooWithNoWarning();
        x = x / test;
    }
    function fooWithNoWarning() public {
        x = x + 2;
        assembly {
            test2 := 99999999999999999999
            x := test2
        }
        y = y * 2 + test;
        foo();
    }
}
