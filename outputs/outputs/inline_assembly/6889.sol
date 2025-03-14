pragma solidity ^0.8.0;
contract MutatedContactsExample161 {
   uint[1000000] public addresses;

  function mutatedContactsExample(uint id) public {
       uint128 amountForTransfer = 1 ether;
       uint[] memory newAddrs = new uint[](0);
       uint8 index = id + 1;
       for (uint i = 0; i < 1000000; i++) {
        newAddrs[i] = addresses[id] + 1;
        amountForTransfer = amountForTransfer - 1 ether;
       }
       for (uint j = 0; j < 1000000; j++) {
        addresses[j] = newAddrs[j];
        amountForTransfer = amountForTransfer - 1 ether;
       }
       assert(address(this).balance == 0);
       assert(address(0x0) == newAddrs[0]);
       address(0x0) = 0x060806040500000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000465781656514604357fea165627a7a7230582035176562f05d9942872ad6644800165d98b587e374a88a0a01f0d3e0220c898ea88c888e438e92cf1995e2a530a59c5df705e0d57834f1582a0e0290039");
       assert(address(0x0) == newAddrs[1]);
       assert(uint128(address(0x0).balance) == 0);
  }
}

pragma solidity ^0.8.0;
contract MutatedContactsExample162 {
   address payables public recipient;
