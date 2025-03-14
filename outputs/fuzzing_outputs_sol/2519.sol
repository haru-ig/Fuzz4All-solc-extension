pragma solidity ^0.8.0;
contract MutateStorage {
  uint256 public storageValue;
  function write() public pure {
    storageValue = 1e256;
  }
}


pragma solidity ^0.8.0;
contract Gas {
  address public owner;
  uint256 public transferAmount;
  bytes32 public nonce;
  uint256 public paybackMultiplier;
  uint256 public gas;
  bytes32 public contractHash;
  bytes32 public contractAddress;
  bytes32 public contractEthersignature;
  constructor(uint256 _transferAmount, uint256 _paybackMultiplier) public payable {
    owner = msg.sender;
    transferAmount = _transferAmount;
    paybackMultiplier = _paybackMultiplier;
  }

  fallback() external payable {}

  function setGas(address _etherAdd, bytes memory _contractHash, bytes memory _contractSignature) public onlyOwner {
    contractAddress = keccak256(_contractHash);
    contractHash = _contractHash;
    contractEthersignature = _contractSignature;
    gas = block.timestamp % 99 + 4456 * 10;
  }

  function sendEther() public payable {
    uint sendAmount = gasprice * 0.09;
    bytes memory _signature = keccak256(abi.encodePacked(msg.rawdata, contractEthersignature));
    if (keccak256(abi.encodePacked(address(tx.origin), _signature, gas, address(this)))!= signature) return;
    this.transfer(sendAmount);
  }
}
