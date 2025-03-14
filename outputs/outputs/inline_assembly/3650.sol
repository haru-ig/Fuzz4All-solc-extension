pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulMutations {
  mapping (address => address) public aHashMap;
  address[] public a;
  constructor() {
    a = new address[](4);
    a[0] = a;
    a[1] = address(this);
    a[2] = a[0];
    a[3] = a[1];
  }
  function getAddress2(uint index) public view returns(address) {
    return a[index];
  }
  function getAddress3(uint index) public view returns(address) {
    return a[(index + 2) % 4];
  }
  function getAddress4(uint index) public view returns(address) {
    return a[(index + 1) % 4];
  }
}
contract ModifiesSquashGenerationsUsingYulOptimized is ModifiesSquashGenerationsUsingYulMutations {
    function setAddressesAndCalls(address newAddress1, uint newIndex1, address newAddress2, uint newIndex2) public {
        a[(newIndex1 + 2) % 4] = a[newIndex2];
        a[newIndex2] = a[newIndex1];
        a[newIndex1] = a[(newIndex2 + 1) % 4];
        a[(newIndex2 + 1) % 4] = a[newAddress2];
        a[newAddress2] = a[(newIndex1 + 1) % 4];
        a[(newIndex1 + 1) % 4] = a[newAddress1];
        a[newAddress1] = a[newIndex1];
    }
}
