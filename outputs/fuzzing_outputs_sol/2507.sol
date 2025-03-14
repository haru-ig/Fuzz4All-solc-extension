pragma solidity ^0.8.0;
contract ModifiesOld {
  contract New {
    function modifier modifiesOld() {
      _;
      assert(storageValue > 0);
    }
    function payableFunc() public pure {
      emit Foo(address(this).balance);
      modifiesOld();
      emit Bar(address(this).balance);
    }
    function () public pure {payableFunc();}
    event Foo(uint256 amount);
    event Bar(uint256 amount);
  }
}
contract Caller {
  New old;

  function callAndModifyEther() public payable {
    address addr = address(this);
    old.payableFunc.value(address(this).balance)(10, 20);
  }

  function callAndModifyEtherWithFallback() public payable {
    address addr = address(this);
    old.callAndModifyEther.value(address(this).balance)();
    old.callAndModifyEther.value(address(this).balance)(0, 0);
    old.callAndModifyEther.value(address(this).balance)(0, 0);
  }

  function functionSignatureCheck(bytes32 funcSig) public pure {
    address addr = address(new New());
    (,,uint) = addr.staticcall(abi.encodeWithSelector(funcSig, "Ethereum"));
  }
}
contract FallbackContract {

}
