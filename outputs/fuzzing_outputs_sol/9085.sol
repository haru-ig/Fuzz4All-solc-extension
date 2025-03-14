pragma solidity ^0.8.0;

contract FirstFallback {
  receive() public payable {   }
}


pragma solidity ^0.8.0;
contract ThirdFallback {
  function badCall(uint i  , address add  ) pure public returns (bytes memory) {
    return new bytes(0);
  }
}
