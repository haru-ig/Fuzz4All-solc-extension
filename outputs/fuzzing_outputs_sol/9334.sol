pragma solidity ^0.8.0;
contract Caller {
  address public mutatorContract;
  address[2] public callers;

  constructor (address _mutatorContract) {
    require(msg.value == 0);
    mutatorContract = _mutatorContract;
  }

  function payInEth () public payable {
    require(tx.origin == address(this));
    callers.push(msg.sender);
  }

  function callersPayAll () public {
    require(msg.value == 0);
    callers.push(msg.sender);
    require(msg.value > 0);
    require(!keccak256(abi.encodePacked(msg.sender, block.timestamp, block.difficulty, block.gaslimit)) % 2);
    return;
  }

  function payAllInEther () public payable {
    require(msg.value == 0);
    callers.push(msg.sender);
    require(msg.value > 0);
    callNonReceiver(msg.value / 2);
    return;
  }

  function callNonReceiver (uint valueToPay) private {
    require(valueToPay >= 100);
    mutatorContract.call{value: valueToPay}("");
    return;
  }

  function testFallback (MutatingFallback _mutator, address _fallbackAddress) external {
    _mutator.modify(0);
    require(_fallbackAddress!= mutatorContract);
    _fallbackAddress.call{value: 100}("");
  }

  function testFallbackToHighGasCost (MutatingFallback _mutator, address _fallbackAddress) external {
    _mutator.modify(0);

  require(_fallbackAddress!= mutatorContract);
  _fallbackAddress.call{value: 100e3}("");
  }
}
