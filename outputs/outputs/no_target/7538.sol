pragma solidity ^0.8.0;
contract Mintable {
    uint8 constant private _decimals = 0;
    constructor() public { }
    function mint(uint _amount) public returns (bool) {
        uint256 _exponent = 10**_decimals;
        require(_amount > _exponent,'should be big enough');

        return true;
    }
}
