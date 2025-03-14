pragma solidity ^0.8.0;

contract Contract {
    function getSender() internal view returns (address) {
        return AddressHelper.sender();
    }
}
