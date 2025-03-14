pragma solidity ^0.8.0;
contract MutatedCallerExample {
  address public contractToCall;

  constructor(address _contractToCall) public {
    contractToCall = _contractToCall;
  }

  function call_call_from_fallback() public {
    if (callAndLog(contractToCall, "")) {
    }
  }

  function call_mutation_from_fallback() public {
    contractToCall.call{ value: 20 }("");
  }

  function callAndLog (address contractToCall_, string memory message_) public {
    bool result = contractToCall_.call{ value: 20 }("");
    require(result == true);
    msg.sender.transfer(keccak256(abi.encodePacked("\n","MUTATION:", message_)));
  }
}
pragma solidity ^0.8.0;
contract MutatedCallerExample {


  address public contractToCall;

  constructor(address _contractToCall) public {
    contractToCall = _contractToCall;
  }



  function call_mutation_from_fallback() public {
    contractToCall.call{ value: 20 }("");
  }

  receive() external payable {
  }
}
