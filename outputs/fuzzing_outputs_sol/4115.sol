pragma solidity ^0.8.0;
contract Mutator {
  bytes32 public originalFunction;
  bytes32 public modifiedFunction;
  constructor(address from) Mutator(from) {
    originalFunction = 0x0;
    modifiedFunction = 0x0;
    originalFunction = keccak256(abi.encode('Mutator', address(this)));
  }
  function Mutator(address mutatorAddr) {
    if (originalFunction == keccak256(abi.encode('Mutator', address(this)))) {
      modifiedFunction = mutatorAddr.call{value: msg.value}("");
    }
  }
  function() external payable {
    (bool sent, bytes memory data) = msg.sender.call("");
    assert(! sent);
    assert(data.length == 0 || abi.decode(data, (bool)));
  }
}
```
</pre>

<p>You can now compile and test your modified program in the Remix Solidity compiler, and you will see that both your program and mutator contracts are compiled just fine. <br>You can now start playing with the contracts directly in the Remix compiler and see how they react to calls from different clients, without having to make changes in both the main contract and the mutator contract.</p>

<p align="center">
    <img src="img/contract-interaction.png">
    <br>
    <code><b>Figure 1. Simple contract interaction in Remix compiler</b></code>
</p>

<pre class="brush: solidity">
pragma solidity ^0.8.0;
contract SimpleContract {
  uint8 public value;

  function testFunction() public returns (uint8) {
    return value;
  }

  function setNewValue(uint8 newVal) public {
    value = newVal;
  }
}

contract TestCall {
  address mutatorAddress;

  SimpleContract simpleContract;

  TestCall(SimpleContract _simpleContract, address _mutatorAddress) {
    simpleContract = _simpleContract;
    mutatorAddress = _mutatorAddress;
  }

  function testCall() public returns (uint8) {
    uint8 originalValue = simpleContract.testFunction();
    simpleContract.setNewValue(64);
    uint8 newValue = simpleContract.testFunction();
    require(originalValue == newValue, "Returned wrong value!");
    return 66;
  }

  function makeCallWithReceive() public returns (uint8) {

    simpleContract.setNewValue(128);
    uint8 newValue = simpleContract.testFunction();
    require(simpleContract.testFunction() == newValue, "Function did not return value correctly.");
    uint storedData = simpleContract.testGetStoredData();
    require(storedData == originalValue, "Not received correct value!");
