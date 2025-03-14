pragma solidity ^0.8.0;
interface Foo {
    function f() external returns (bool);
}
contract FooBar is Bar, Foo {
    address foo;
    constructor () {
        foo = msg.sender;
    }
    function setfoo(address _foo) public virtual override {
        require(_foo!= foo, "Bar: already set");
        foo = _foo;
    }
}
