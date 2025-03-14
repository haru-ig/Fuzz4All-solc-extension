pragma solidity ^0.8.0;
contract Mutated3c {
    function toUint() private pure returns(uint) {
      return 42;
    }

    function toAddress() private pure returns(address) {
      return 0x00000000000000000000000000000000000000;
    }

    function toUintUint(uint x, uint y) private pure returns(uint) {
      return x * y;
    }

    if (toUint() == 42) {
      uint a;
    }
    if(toAddress() == 0x0000000000000000000000000000000000000000) {
      address a;
    }
    if(toUint() * toUint() == 42) {
      uint a, b;
    }
    if(toUintUint(1, toUint()) == 1) {
      uint a;
    }
    if(toUintUint(toUint(), 1) == 1) {
      uint a;
    }
    if(toUintUint(1, toUint()) == 20) {
      uint a, b;
    }
}
