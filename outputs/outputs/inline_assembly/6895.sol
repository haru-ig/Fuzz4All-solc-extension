pragma solidity ^0.8.0;
contract MutatedContactsExample164 {
    bytes32 constant MANUFACTURER = bytes32(uint256(-2216028331));
    bytes32 constant PRODUCT = bytes32(uint256(-1537245368));

    function() external payable {
        require(manufacturer(), "Cannot accept tokens");
        require(message.value > 0, "Cannot sell 0 tokens");
        require(product() == MANUFACTURER || product() == PRODUCT, "Cannot be sold by {0}", msg.sender);

        if (msg.value > 0 && product() == MANUFACTURER) msg.sender.transfer(msg.value);
        else fallback(msg.value);
    }

    function manufacturer() public pure returns (bool) {
        return msg.sender == MANUFACTURER;
    }

    function fallback(uint256 _amount) public virtual {
        owner().transfer(_amount);
    }

    function product() public pure returns (bool) {
        return msg.sender == MANUFACTURER;
    }

    function owner() public pure returns (address payable) {

        return payable(0x000000000000000000000000000000000);
    }
}
"use strict";



let manufactoryContractAddress;
if (!_.isNil(manufactoryContractAddress)) {
    const ManufactoryContractInstance = artifacts.require(`./Manufactory/${manufactoryContractAddress}`);
    ManufactoryContractInstance.new(bytes("example"));
}







/*! @dev Manutext is a custom Erc20Snapshot library that enables the creation of custom contract factories. It can be used as the base for multiple contracts, without modification, or augmented
