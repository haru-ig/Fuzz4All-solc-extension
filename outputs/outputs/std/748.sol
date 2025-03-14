pragma solidity ^0.8.0;
interface MinterInterface {
  mapping(bytes32 => bool) public usedMints;
  function mint() external view;
}
contract MutatedMinter {
  address public minter;
  MinterInterface internal mutatedMinter = new MinterInterface();
  constructor() {
    minter = msg.sender;
  }

  function mint() external view {
    return mutatedMinter.mint();
  }


pragma solidity ^0.8.0;
contract Test {
  function t() public view returns (uint) {
    return a;
  }


  uint public a;
}
