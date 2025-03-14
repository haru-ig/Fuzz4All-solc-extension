pragma solidity ^0.8.0;
interface Mutator {
  function pay(address payable toAddress) external payable;
}



pragma solidity ^0.8.0;
interface Caller {
  function callMutatedContract(Mutator mutatedContract) public;
}

pragma solidity ^0.8.0;
contract MutationVerifier {
  address public mutatedContract;
  function pay() public payable returns (address payable) {
    return callWithFallback(mutatedContract);
  }
  function callWithFallback(address payable receiver) public {
    receiver.call{value: uint(address(this).balance)}{0xcddebfdcafef0000000000000000000000000000000000000000000000000000010()}{};
  }
}

pragma solidity ^0.8.0;
contract ContractWithFallback {
  fallback () external payable {}

  function pay() public payable returns (address payable) { return msg.sender; }

  function (address) external {}

  receive() external payable {}
}

contract Solidity1001B {
    function pay() public payable returns (address payable) { return msg.data; }
}
