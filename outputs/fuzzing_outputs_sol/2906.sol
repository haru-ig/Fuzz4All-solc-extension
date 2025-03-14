pragma solidity ^0.8.0;
contract Foo {
    function f (uint n) public {
        require(n == 3);
    }
}

pragma solidity ^0.8.0;
contract Foo {
    function f (uint n) public payable {
        require(n == 3);
    }
}
