pragma solidity ^0.8.0;
interface IContract {
    function transfer(address _to, uint256 _value) external returns (bool ok);
}
contract MixedContactsExample1111 is IContract {
    uint internal constant test = 20;
    uint x;
    uint internal constant internalHash = 1100;
    constructor() {
        x;
        internalHash;
    }



}
