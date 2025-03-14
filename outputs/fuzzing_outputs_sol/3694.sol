pragma solidity ^0.8.0;
contract Example7 {
  address addr;
  uint constant n = 2;
  function getEthers() public returns (uint[] memory) {
    uint[] memory e;
    for (uint i = 0; i < n; ++i) {
        e.push(addr.balance);
        address(addr).balance = 0;
        address(addr).transfer(1 ether);
    }
    return e;
  }
  function payEthers() public payable {
    uint[n] memory e;
    for (uint i = 0; i < n; ++i) {
        e[i] = addr.balance;
        addr.transfer(1 ether);
    }
    for (uint i = 0; i < n; ++i) {
        addr.balance = e[i];
        e[i] = 0;
    }
  }
  function main() public {
    payEthers();
  }
}
