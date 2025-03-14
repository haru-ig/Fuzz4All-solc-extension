pragma solidity ^0.8.0;
contract MyContract {

    address[] logAddresses;


    function getAddress(address addr) public view returns (address) {
        if (msg.sender == addr) {
            return address(0);
        }
        return addr;
    }

    function getLength(address addr) public view returns (uint) {
        return logAddresses.length == 0? 0 : logAddresses.length;
    }
}
