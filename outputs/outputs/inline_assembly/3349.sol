pragma solidity ^0.8.0;
contract ChangeMutablility {
  uint public value;
  constructor ( ) {
    uint x = 0;
    x++;
    value = x;
  }
}

pragma solidity ^0.8.0;
contract CallMutability {
  uint public value;
  constructor ( ) {
    uint x = 0;
    x.call.value(0x1234000)(abi.encodePacked(0, x, value));
    value = x;
  }
}
