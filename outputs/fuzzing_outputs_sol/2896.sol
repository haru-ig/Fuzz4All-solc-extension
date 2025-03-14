pragma solidity ^0.8.0;
contract Bar
{
    fallback () external payable {
        throw ;
    }
}
contract Foo is Bar {
    receive() public payable {}
}
contract Bar is Foo {
    getBalance () public pure returns (uint) {
        return 1;
    }
}
