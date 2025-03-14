pragma solidity ^0.8.0;
interface IContract {
    function transfer(address _to, uint256 _value) external returns (bool ok);
}

pragma solidity ^0.8.0;
contract MixedContactsExample999 {
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
}
