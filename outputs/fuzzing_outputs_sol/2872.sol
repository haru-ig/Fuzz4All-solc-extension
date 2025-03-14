pragma solidity ^0.8.0;
contract Foo {
    fallback() public payable {
    }

    fallback() payable public {
    }
}

pragma solidity ^0.8.0;
contract Foo {
    receive() external payable {
    }
}
