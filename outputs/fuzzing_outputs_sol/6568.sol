pragma solidity ^0.8.0;
contract Foo {
    fallback () external {
        foo();
    }
    function () public pure {
        foo();
    }
}
