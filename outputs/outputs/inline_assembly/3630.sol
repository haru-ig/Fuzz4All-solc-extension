pragma solidity ^0.8.0;
contract ModifiesGenerationUsingYulWithSemantics {
  mapping (address => uint) public balance;
  constructor() {
    balance[msg.sender] = 10 ether;
  }
}

pragma solidity ^0.8.0;
contract ModifiesGenerationWithEtherWithSemantics {
  address payable public a;
  uint public g;
  modifier restricted() { a = payable(a); _; }
  constructor() {
    a = payable(address(uint160(blockhash(0))));
    a = payable(address(uint160(blockhash(1))));
    a = payable(address(uint160(blockhash(uint160(web3.block.number)))));
    a = payable(address(uint160(blockhash(address(this)))));
    a = payable(address(uint160(blockhash(address(0)))))) + 100;
    a = payable(address(uint160(blockhash(address(1))))));
    a = payable(uint160(abi.encodePacked(block.difficulty, block.timestamp, block.coinbase, block.difficulty * block.difficulty, block.gaslimit, block.gasused, web3.accounts[msg.sender].balance)));
    a = payable(a);
    a = payable(a);
    a = payable(address(0));
    a = payable(a);
    a = payable(a);
    a = payable(a);
    a = payable(a);
    a = payable(0);
    a = payable(a);
}
modifier restricted()
 {
 a = a;
 address a = this;
 a = payable(a);
 a = payable(a);
 a = payable(a);
 a = payable(a);
 a = payable(a);
 a = payable(a);
 a = payable(a);
 a = payable(a);
 a = payable(a);
