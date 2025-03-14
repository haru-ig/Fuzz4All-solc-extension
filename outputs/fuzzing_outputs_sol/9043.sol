pragma solidity ^0.8.0;
contract Caller2 {
  function call(bytes memory b) public pure returns (uint) {
    address addr = abi.decode(b, (address));
    return addr.balance;
  }
}
