pragma solidity ^0.8.0;
contract Caller {

    bytes32 public contractAddress;
    function Caller(address _contractAddress) public{
        contractAddress = keccak256(_contractAddress.toBytes());
    }

    fallback () external payable {
        bytes32 sig;
        assembly { sig := mload(0x40) }
        require(contractAddress!= bytes32(0) && contractAddress!= sig, "Contract has no fallback function");
        address(_contractAddress).call{value: msg.value}("");
    }
}
