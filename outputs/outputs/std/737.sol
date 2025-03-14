pragma solidity ^0.8.0;
interface MinterInterface {
  function mint() external;
}

pragma solidity ^0.8.0;
contract NonMutatedMinter {
  MinterInterface public minter;
  constructor() {
    minter = MinterInterface(msg.sender);
  }
}
pragma solidity ^0.8.0;
