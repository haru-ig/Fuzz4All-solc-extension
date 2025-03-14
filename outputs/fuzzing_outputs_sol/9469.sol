pragma solidity ^0.8.0;
contract Modifier {
  constructor() public {
  }

  function receive() public pure virtual {
  }
}
contract ContractWithFallback9a is Modifier {
    address payable receiver;

    event NoPayableFallbackFunction;

    event NoFallbackContract;

    function modifyContractWithFallback1(uint x) public {
      require(msg.value >= 1, "Amount must be non-negative");
      receiver.transfer(msg.value);
    }


    function modifyContractWithFallback2(uint x) public {
      receiver.transfer(msg.value);
    }



    function modifyContractWithFallback3(uint x) public {
      uint storage data = 10;
    }



    function modifyContractWithFallback4() public asm {
      nop;
    }


    function modifyContractWithFallback5() public {
      uint storage data;
    }



    function modifyContractWithFallback6() public asm {
      mstore(0x0, (msg.value));
    }


    function modifyContractWithFallbackWithCall(uint x) public payable {
      receiver.transfer(msg.value);
    }
}
contract Caller {

    address payable private payee;


    ContractWithFallback11 contractWithFallback1;


    ContractWithFallback9a contractWithFallback9;



    function callContractWithFallback() public payable {
      contractWithFallback1.modify(1);
    }


    function callContractWithFallbackWithCall() public payable {
      contractWithFallback9.modifyContractWithFallbackWithCall(1);
    }
}
