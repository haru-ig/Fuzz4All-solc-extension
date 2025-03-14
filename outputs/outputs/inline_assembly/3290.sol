pragma solidity ^0.8.0;
contract Mutate {
  mapping(uint => address) public _addressMap;
  mapping(uint => uint) public _amountMap;
  mapping(address => address[]) public _addressArrayMap;


  constructor() {
    _addressMap[0] = address(0);
    _amountMap[0] = uint(0);
    _addressArrayMap[0] = new address[](sizeof(address[]));
  }
}
```
