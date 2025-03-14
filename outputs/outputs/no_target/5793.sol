pragma solidity ^0.8.0;
interface Foo {
    function foo() external;

    function bar() public view returns (Bar memory bar);
}
contract MainTest {
    Foo foo;
    constructor () {
        foo = Foo(address(0));
        foo.bar.setfoo(address(foo));
    }
}
