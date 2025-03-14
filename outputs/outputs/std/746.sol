pragma solidity ^0.8.0;
interface MinterInterface {
  function mint() external view;
}
contract MutatedMinter is MutatedMinter {
  constructor() {
    mutatedMint(msg.sender);
  }

  function mutatedMint(address _newOwner) public {
    minter = _newOwner;
  }
}




pragma solidity ^0.8.0;





contract MutatedMinter is MutatedMinter {
  constructor(address _initAddr) {
    if (msg.sender!= _initAddr) {
      minter = _initAddr;
    }
  }
}
