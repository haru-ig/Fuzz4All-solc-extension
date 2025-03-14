pragma solidity ^0.8.0;
contract Caller7 {
    address payable private adminAddress;

    constructor(address payable _adminAddress) {
        adminAddress = _adminAddress;
    }


    function fallback() payable external {

        address balance;
        assembly { balance := mload(0x40) }
        adminAddress.transfer(uint256(balance));
    }
}
