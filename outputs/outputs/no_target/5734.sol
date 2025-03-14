pragma solidity ^0.8.0;
contract Baz is Baz, Mintable {
    uint x;
    uint56 z;

    function bar() public virtual override {
        require(keccak256((address(this))) == keccak256((address(this))).toEthSignedMessageHash());
        z++;
    }
}
