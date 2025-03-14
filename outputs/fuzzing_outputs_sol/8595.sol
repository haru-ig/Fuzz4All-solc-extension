pragma solidity ^0.8.0;

contract Caller {
    bytes32 msgHash;
    address contractAddr;

    constructor(bytes memory _hash, address _addr) {
        msgHash = keccak256(abi.encodePacked(_addr));
        contractAddr = _addr;
    }

    fallback () external payable {

        bytes32 mymsgHash = keccak256(abi.encodePacked(msg.value));
            if (msgHash == mymsgHash) {

                address(contractAddr).call{value: msg.value}("");
            }
    }
}
