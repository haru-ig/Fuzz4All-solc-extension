pragma solidity ^0.8.0;
contract Foo {
    function bar(uint) public pure = {
        return 0;
    }
    function barmut(uint) public pure = {
        return 0;
    }
    function baz(uint) public pure = {
        return 0;
    }
    function bazmut(uint) public pure = {
        return 0;
    }
}
pragma solidity ^0.8.0;
contract Foo {
    function bar(uint) public pure {}
    function barmut(uint) public pure {}
    function baz(uint) public pure {}
    function bazmut(uint) public pure {}
}
