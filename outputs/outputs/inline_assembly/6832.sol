pragma solidity ^0.8.0;
contract MixedContactsExample999 {
    uint internal constant test = 42;
    bytes32 bytes32(uint);
    uint x = 0;
    constructor() {
        bytes32(uint(keccak256(x)));
    }
    function foo() public {
        bytes32 bytes32(uint(keccak256(x)));
        x = x + 1;
    }
}

contract MixedContactsExample999 is IContract {
    uint public constant test = 42;
    uint x;
    bytes32 public internalHash;
    constructor() {
        x;
        internalHash;
    }
    function foo() public {
        x = x + 1;
    }
    function transfer(address _to, uint256 _value) public returns (bool ok) {
        (ok) = true;
        return ok;
    }
}
