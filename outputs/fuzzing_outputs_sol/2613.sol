pragma solidity ^0.8.0;
contract myContract {
    bytes32 public constant DEFAULT_ADMIN_ROLE = "DEFAULT_ADMIN_ROLE;
    uint public fallbackValue;
    constructor() payable {
        fallbackValue = 1;
    }
}
