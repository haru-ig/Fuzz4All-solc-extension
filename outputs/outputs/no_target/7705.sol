pragma solidity ^0.8.0;
contract Foo {
    uint x_ = 0;

    function bar() public returns (int) {
        return 0;
    }

    function barmut() public returns (int) throws FooError {
        return 0;
    }

    function barmuterr() public throws FooError {
        return 0;
    }

    function barerr() public returns (int) {
        return 0;
    }

    function barerrthrow() public throws FooError {
        throw FooError();
    }
}
enum FooEnum {
    Foo
}
error FooError {}
