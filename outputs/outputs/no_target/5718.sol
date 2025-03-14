pragma solidity ^0.8.0;

contract Foo {
    Baz private baz;

    constructor(uint _b) public {
        baz = new Baz(_b);
    }

    function foo() public {




        if (baz.y == 7) {
        } else {
        }
    }
}
