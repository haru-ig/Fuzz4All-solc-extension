pragma solidity ^0.8.0;
contract AddressHelper {
    function sender() internal view returns (address payable) {
        return payable (message.sender);
    }
}
