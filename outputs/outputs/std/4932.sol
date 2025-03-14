pragma solidity ^0.8.0;
contract Example {
  address public contract_;
  constructor(address _contract) {
    contract_ = _contract;
  }
  function transfer() public {
    (uint size, uint[] memory sig) = sigVerify(contract_);
    if (verify_sig(contract_, sig)) {
      contract_.transfer(1);
    }
  }
}
