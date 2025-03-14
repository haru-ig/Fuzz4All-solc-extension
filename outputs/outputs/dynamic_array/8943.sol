pragma solidity ^0.8.0;


contract ContractWithDynamicArraysInCall {
  uint dummy1;
  SemanticEquivalentSolidityPointers2 arrayAccess1;
  SemanticEquivalentSolidityPointers2 arrayAccess2;
  address dummyAddress;


  function fakesFunc(SemanticEquivalentSolidityPointers2 arrayAccess, uint dummy1) public {
    arrayAccess1 = arrayAccess;
    this.assert(arrayAccess1.simpleRepricedAddresses.length > 0);
    this.assert(arrayAccess1.simpleRepricedAddresses.length<arrayAccess1.repricedAddresses.length);
    dummy1=0;
    arrayAccess1.simpleRepricedAddresses.push(1);
    uint addr1 = arrayAccess1.getAddrFromAddressArray(1);
    uint addr2 = addr1;
    addr1 = addr2;
    dummyAddress = addr1;
    uint addr3 = dummyAddress;
    dummyAddress = addr1;
    this.assert(addr1 == addr2 && typeof(addr1)==typeof(addr2));

    this.fakesFunc(arrayAccess, 0);
    SimpleAddress dummy2;
    dummy2 = SemanticEquivalentSolidityPointers2.AddressHelper.callAddrHelper(
        SemanticEquivalentSolidityPointers2.AddressHelper.addressToAddressArray(SemanticEquivalentSolidityPointers2.AddressHelper.getAddrFromAddressArray(addr3))
    );
    uint addr4 = dummy2.address;
