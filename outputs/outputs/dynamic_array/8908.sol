pragma solidity ^0.8.0;
contract MutatedContract is SemanticEquivalentSolidityPointers {
  address[3] addrArray;
  uint[32] uintArray;
  address[8] addressArray;
  uint[24] uintArray24;

  function addArraysOfDifferentSizes() external {
    addrArray.push(address(this)+111);
    addrArray.push(address(this)+112);
    addrArray.push(address(this)+113);

    uintArray.push(111);
    uintArray.push(112);
    uintArray.push(113);

    addressArray.push(address(this)+222);
    addressArray.push(address(this)+223);
    addressArray.push(address(this)+224);

    uintArray24.push(222);
    uintArray24.push(223);
    uintArray24.push(224);

    assert(addrArray.length == 3 && uintArray.length == 3 && addressArray.length == 3);
    assert(uintArray24.length == 3 && (uintArray24[0] == 222 || uintArray24[0] == 223));
    assert(uintArray24[1] == 222 && uintArray24[2] == 223);
    assert(addressArray[0] == address(0x01) && addressArray[1] == address(0x02) && addressArray[2] == address(0x03));
    assert(uintArray.length == 3);

    for (uint i = 0; i < 3; ++i) {
      addrArray[i].send(111);
      uintArray[i].send(111);
      addressArray[i].send(111);
    }
    for (uint i = 0; i < 3; ++i) {
      uintArray24[i].send(111);
      uintArray24[i].send(111);
      addressArray[i].send(111);
    }
  }

  function removeArraysOfDifferentSizes() external {
    addrArray.pop();
    addrArray.
