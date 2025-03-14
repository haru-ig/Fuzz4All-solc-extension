pragma solidity ^0.8.0;
contract Test2 {
    address[] memoryAddresses;
    function MemoryAddresses() public {
        memoryAddresses.push(msg.sender);
        memoryAddresses.push(address(new Test2()));
        memoryAddresses.push(keccak256(abi.encodePacked(address(new Test2()))));
        memoryAddresses.push(keccak256(abi.encodePacked(address(new Test2()), 1)));
        memoryAddresses.push(keccak256(abi.encodePacked("0x00")).toHexString());
        memoryAddresses.push(bytes1{0x01});
        memoryAddresses.push(bytes{32});
        memoryAddresses.push("");
    }
}
