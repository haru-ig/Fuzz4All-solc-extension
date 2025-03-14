pragma solidity ^0.8.0;
contract Mutator {
    address constant ownerAddress = 0xE04071A20f0e50bD24E1E95Fd58F0198e8191F7F;
    function transfer() public returns (uint) {
        (bool success, bytes memory data) = ownerAddress.call{value: msg.value}("");
        require(success, "Failed to transfer.");
        return 3;
    }
}
