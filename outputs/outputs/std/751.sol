pragma solidity ^0.8.0;

contract MinterWrapper {

  function MinterWrapper(MinterInterface _Minter) {
      constructor();
      Minter = _Minter;
  }

  MinterInterface Minter;


  function mint() external view {
    return address(Minter);
  }
}
