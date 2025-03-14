pragma solidity ^0.8.0;
interface MinterInterface {}
interface MutableMinter {




  function mint() external;
}
contract MutatedMinter is NonMutatedMinter {
  bool public isMutated = true;
}
contract Minter {
  MutatedMinter immutable minter;
  function mint() external {
    require(isMutated);
    if (minter.isMutated == false) {
      minter.isMutated = true;





      minter.mint();
    }
  }
}
pragma solidity ^0.8.0;
interface MinterInterface {}
interface MutableMinter {




  function mint() external;
}
contract MutatedMinter is NonMutatedMinter {
  bool public isMutated = true;
}
contract Minter {
  MutatedMinter immutable minter;
  function mint() external {
    if (isMutated) {

      minter.isMutated = false;

      minter.mint();
    } else {



      minter.isMutated = false;
    }
  }
  function returnToInitialValues() external {
    minter.isMutated = true;
