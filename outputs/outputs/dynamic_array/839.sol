pragma solidity ^0.8.0;
contract Example {
    uint private _x;
    uint public x() public returns (uint) {
        return _x;
    }
}
