pragma solidity ^0.8.0;
abstract contract Modifiers {
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

}
