pragma solidity ^0.8.0;
contract Caller {
  uint counter;
   function f() public {
      counter++;
      CreateAddress().createAddress(address(new MutatingFallback()));
      counter++;
      CreateAddress().createAddress(address(new MutatingFallback()));
      counter++;
      CreateAddress().createAddress(address(new MutatingFallback()));
      counter++;
      CreateAddress().createAddress(address(new MutatingFallback()));
      counter++;
  }
}
