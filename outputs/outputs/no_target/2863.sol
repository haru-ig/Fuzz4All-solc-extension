pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage {
    address public owner;
    uint256 public a;
    bytes32 public b;
    bytes33 public c;
    uint immutable d;

    constructor() public {
        owner = msg.sender;
        a = 1;
        b = keccak256("first key");
        c = keccak256("second key");
        d = 2**128;
    }
    function set(uint _value) public {
        a += _value;
    }
    function get() public view returns (uint) {
        return a;
    }
}
