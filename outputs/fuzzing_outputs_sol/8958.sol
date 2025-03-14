pragma solidity ^0.8.0;

struct CallContractData {
  CallContractData(CallContract __contract, uint256 __amount) {
    CallContract _callContract = CallContract(contractAddress);
    _amount = _callContract.call(_amount);
  }
}


pragma solidity ^0.8.0;
contract CallContract {
  uint _amount;
  address contractAddress;

  constructor() {
    contractAddress = address(new CallContract());
  }

  function call(uint _amount) public returns (uint) {
    contractAddress.call{value: _amount}("");
    return _amount;
  }
}
