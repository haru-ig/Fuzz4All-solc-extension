pragma solidity ^0.8.0;
contract Foo {
    IERC20Metadata public token;
    constructor(address tokenAddr) {
        token = IERC20Metadata(tokenAddr);
    }
    function bar() public pure {
        token.name().transfer(msg.sender, token.balanceOf(address(this)));
    }
}
