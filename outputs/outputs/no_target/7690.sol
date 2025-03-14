pragma solidity ^0.8.0;
contract Foo {
    function bar(uint a) public pure {
        a = a + 1;
    }
    function barmut(uint a) public {
        a = a + 1;
    }
    function baz(uint b) public pure {
        a = b + 1;
    }
    function bazmut(uint b) public {
        a = b + 1;
    }
}
