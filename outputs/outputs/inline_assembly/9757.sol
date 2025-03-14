pragma solidity ^0.8.0;
contract MutatedYulContract2 {
    uint internal contractCounter;
    function createCounter() public {
        contractCounter = 1000;
    }
    function add(uint x) public {
        contractCounter += x;
    }
    function subtract(uint x) public {
        contractCounter -= x;
    }
    function increment() public {
        contractCounter++;
    }
    function decrement() public {
        contractCounter--;
    }
    function zero() public {
        contractCounter = 0;
    }
}



contract testMutatedYulCompiler {
  constructor() public {}
  contract MutatedYulContract {
      uint internal contractCounter;
      mapping (uint=>mapping (uint=>uint)) storage internal storageMap;
      uint constant c = 0x00;
      modifier onlyContractOwner(){ require(msg.sender == address(0x3f899b80a3B16C28F0cF24295F1158C42a59E698)); _; }
      modifier onlyInContract(uint contractAddress){
        require(msg.sender == contractAddress); require(c==0x0); c = 1; _; c=0x0;
      }


      function multiply(uint z, uint i) public onlyInContract(address(0x3f899b80a3B16C28F0cF24295F1158C42a59E698)){
        uint x;
        storageMap[z][i] = c;
        if (z == 2) {
          x =  20;
        } else {
          x =  z * c;
        }
        return x >= 2 + c? x : x + c;
      }



    function testTestMultiContract() public view onlyInContract(address(0x3f899b80a3B16C28F0cF24295
