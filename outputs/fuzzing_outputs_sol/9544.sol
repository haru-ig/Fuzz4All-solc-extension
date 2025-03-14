pragma solidity ^0.8.0;

contract Mutator {
  bool public mutable boolVar = false;
  bytes public immutable immutableBytesVar = bytes("immutable data");
  address public immutable immutableAddressVar = address(0x5555555555555555555555555555555555555555555555555555555555555);

  function setMutable(bool a) public returns (bool) {
    bool var = a;
    boolVar = var;
    emit BoolSet(var);
    return var;
  }

  function setImmutableBytes(bytes memory a) public returns (bool) {
    bytes memory var = a;
    immutableBytesVar = var;
    emit BytesSet(a);
    return var;
  }

  function setImmutableAddress(address memory a) public returns (bool) {
    address var = a;
    immutableAddressVar = var;
    emit AddressSet(a);
    return var;
  }

}
contract MutatorCaller {
  Mutator public immutable mutator;

  constructor () public {
    mutator = Mutator(0x5F69E353d7FBB9aFCb52E9819d41a52860C9D7Df);
  }


  function test() public returns (bool) {
    setMutations();
    return true;
  }

  function setMutations() public {
    mutator.setMutable(false);
    mutator.setImmutableBytes(bytes("abc"));
    mutator.setImmutableAddress(address(this));
  }
}
contract Fallback {

  struct A {
    uint p1;
    uint p2;
  }

  A memory a = A(1000, 2);

  bool public mutableBool = false;
  bytes public immutable immutableBytes = bytes("immutable data");

  function foo() public returns (bool){
    return mutatorCaller.mutator.setMutable(false) && mutatorCaller.mutator.setImmutableBytes(bytes("abc")) && mutatorCaller.mutator.setImmutableAddress(address(this));
  }

  fallback() external {
    a.p1 = 500;
    immutableBytes = bytes("this is a test");
  }
}
