pragma solidity ^0.8.0;
contract Foo {
    constructor (address _a) public {
        a = _a;
    }

    receive () external payable { }
}


pragma solidity ^0.8.0;
contract Baz {
    Foo foo = new Foo(address(new Foo()));
}
contract Foo {
    constructor (address _b) public {
        b = _b;
    }

    receive () external payable { }
}
contract C {
    Baz baz = new Baz();
}
