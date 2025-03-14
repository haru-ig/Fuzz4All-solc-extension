pragma solidity ^0.8.0;
contract A {
  address public _contractAddress;
  constructor(address contractAddress) {
    _contractAddress = contractAddress;
  }
  function decrementNumber() public {
    (bool ok, ) = _contractAddress.call{value: msg.value}(abi.encodeWithSignature("incrementNumber()"));
  }
}
contract B is A {
  constructor() {
    super(msg.sender);
  }
}
contract Contract {
  constructor() {
  }
}
