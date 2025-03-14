pragma solidity ^0.8.0;
contract SomeContract {
  constructor() {
    _fallback();
  }
  receive() external payable {
    _fallback();
  }
  fallback() external {
    _fallback();
  }
  function _fallback() internal {
    emit TestEvent("FALLBACK");
  }
}
interface Interface {
  function test() external returns(uint);
}
contract SomeContractWithFallbackInterfaceInterface {
  function test() external returns(uint);
}
contract Caller {
  function call() public payable {
    (uint x; uint y; (, y) = (x, x + 1));
    (x, y) = (x + 2, y);
    Interface(address(this)).test();
    Interface(IAddressContract(address(this))).test();
    IAddressContract(IAddressContract(IAddressContract(address(this)))))
    .test();
    (x, y) = (x + 3, y + 1);
    IAddressContract2(address(this)).test();
    interface(IInterface2(address(this)))
    .test();
    ISomeContract
    .FunctionWithFallback
    .test();
    address(this).call.value(1*(address(this).balance)).gas();
    address(this).call((uint256)0);
    address(this).call.value(0);
    address(this).call(.01).gas();
    address(this).call(200);
    address(this).call.value(200)();
    uint(address(this)).test();
    uint(address(0x0000000000000000000000000000000000000042
     ).test();
     callme();
  }
  function callme() public payable {
    IAddressInterface[] memory interfaces =
     (IAddressInterface[])interface(address(0)).gas();
    uint i;
    for(; i < interfaces.length; i++) {
      (x, y) = (x, x + 1);
      (x, y) = (x + 2, y);
      interfaces[i].test();
    }
    IAddressInterface(IAddressInterface(interfaces[0])).test();
    if (interface(IInterface2).gas()) {
      (x, y) = (x + 3, y + 1);
      interface(IInterface2).test();
    }
    address(this).call
    .value(0)
    .gas();
    address(this).call
    .gasLimit(1)
