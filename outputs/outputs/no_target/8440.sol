pragma solidity ^0.8.0;
contract Unsafe6B {
    constructor (
        address _address
    ) public {
        new SafeMath8(__addressOf(msg.sender)).equals(address(_address)) = true; }
}
