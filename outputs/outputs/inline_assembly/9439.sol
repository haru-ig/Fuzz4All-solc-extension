pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  uint256 counter;
  fallback() external {
    counter += value;
    counter --;
  }
}

pragma solidity ^0.8.0;
contract Hello {
  fallback() external {
  }
}

pragma solidity ^0.8.0;
contract Demo {
  fallback() external {
    assembly {

      localstore
      staticcall(gas(), 0, 0)
      return(0)
    }
  }
}
