pragma solidity ^0.8.0;
contract Foo {
    address bar;
    constructor() {
        bar = (new Bar).deploy().setfoo(msg.sender);
    }
    function getfoo() public view {
        return bar;
    }
}
```
```solidity









contract Contract {
    address public foo;
    constructor() {
        foo = (new Foo).deploy();
    }
    function getfoo() public {
        uint256 a;
        assert(a == foo);
        a = 100;
        assert(a == 100);
    }
}
```
