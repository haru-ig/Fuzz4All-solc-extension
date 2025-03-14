pragma solidity ^0.8.0;
contract Damaged {
    uint256 public b;
    bytes public data;

    constructor(bytes memory _data) public {
        data = _data;
        b += 10;
    }
}
