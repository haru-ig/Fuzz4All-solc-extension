pragma solidity ^0.8.0;
contract Mutater25 {
    function getAddresses(Mutater25 memory _parent) public view returns (address[] memory) {
        return _parent.addresses[_parent.address()];
    }
}
