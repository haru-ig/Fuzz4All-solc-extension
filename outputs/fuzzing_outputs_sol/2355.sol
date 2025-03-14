pragma solidity ^0.8.0;
contract NewContractModifier {
  constructor(address caller) {
    emit BeforeCall(address.call.value(caller.balance)(_));
  }
  function callWithEther(uint256 value) public {
    address _ = address(this).balance;

    address(caller()).balance.value(value)(_);
  }
  event BeforeCall(address _callee);
}

contract FallbackTest {
  MutatedCaller contract_;
  constructor(MutatedCaller _contract) {
    contract_ = _contract;
  }
  function test() public {


    contract_.mutatedCallWithEther.value(0>(_));


    contract_.mutatedCallWithEther.value(0);

    new NewContractModifier(address(this));











  }
}
