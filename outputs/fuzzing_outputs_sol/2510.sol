pragma solidity ^0.8.0;
contract Complex {


  address payable private holder;
  function foo() public pure {
    require(msg.value > 1 ether);
    holder.receive(msg.value);
  }
  function callWithFallback() public pure {
    Caller(address(this)).call{value: 10 ether}(bytes(\"\"));
  }
  // The addressCall(x_) provides a way to call a contract directly with plain Ether
  function addressCall(address payable target_, bytes calldata data_) public pure {
    target_.call{value: 10 ether}(data_, "");
  }
  // The addressCall(x_, data_) provides a way to call a contract directly with plain Ether
  function addressCall(address payable target_, bytes calldata data_, uint256 gas_) public pure {
    target_.sendValue(gas_, data_);
  }
}
/* Please create a mutated contract that deploys two contracts*/
pragma solidity ^0.8.0;
contract Deployer {
  Complex constant complexContract = Complex(address(new WriteStorage()));
  function deployComplexStore() public {
    complexContract.writeStore();
  }
  function deployCaller() public {
    Caller(address(this)).call{value:10 ether}("");
  }
}
/* Please create a mutated contract that directly uses the same fallback function in its functions and call methods. */
pragma solidity ^0.8.0;
contract Caller {
  function call() public pure {
    complexContract.callWithFallback();
  }
}
/* Please create a mutated contract that calls `addressCall` with the 10 Ether value specified at construction time.*/
pragma solidity ^0.8.0;
contract CallAndReceiver {
  address payable private holder;
  function foo() public pure {
    // You cannot define a receive function without payable.
    // For example, with a contract in which it executes a transfer function,
    // you do not define a receive function.
    // Even, if that receiver function in a contract is marked with the modifier
    // onlyAccepts(address payable _holder) in which `_holder` is declared as the modifier,
    // you cannot define the receive function without payable.
    require(msg.value > 1 ether);
    // In this call, the contract address payable holder is used to transfer Ether to this contract.
    holder.sendValue(10 ether, "");
  }
  // This modifier rejects the transfer function and rejects to store an Ether value in a temporary variable.
  modifier onlyAccepts(address payable _holder) {
    require(_holder == holder);
    _;
  }
  function call(address payable target_) public pure {
    addressCall(target_, "", 10);
  }
}
