pragma solidity ^0.8.0;
import "IMutable.sol";
contract C {
    constructor(
        address owner,
        address sender,
        uint immutable data
    ) {
        IMutable(sender).balance();
        IMutable(IImmutable(owner).mutate()).balance();

    }
