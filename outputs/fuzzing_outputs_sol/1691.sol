pragma solidity ^0.8.0;
contract Contracts {
  mapping (string => address) public ownerContracts;
  mapping (address => bytes32) public ownerToAddress;

  event Moved(uint256 newVersion);

  constructor(uint256 initialVersion) public {
    ownerContracts[bytes32(0)] = address(new MutatedFallback());
    ownerToAddress[address(new MutatedFallback())] = bytes32(0);
    ownerContracts[bytes32(initialVersion)] = address(new MutatedFallback());
    ownerToAddress[address(new MutatedFallback())] = bytes32(initialVersion);
  }

  fallback () external {
    bytes32 contractID = bytes32(keccak256((abi.encodePacked("MutatedFallback")))));
    address contractAddress = address(ownerContracts[contractID]);

    bytes storage data = ownerToAddress[contractAddress];
    uint256 version = data[bytes32(0)];
    uint256 value = data[bytes32(1)];

    require(contractAddress == address(new MutatedFallback()), "No fallback function for the contract");

    require(contractID == bytes32(version), "Fallback contract ID doesn't match the contract's version");

    (data[bytes32(0)] = version+1, data[bytes32(1)] = value + 1);

    emit Moved(version);
  }

  address getOwner(uint256 version) public view returns (address){
    return ownerContracts[bytes32(keccak256((abi.encodePacked(version))))];
  }
}
