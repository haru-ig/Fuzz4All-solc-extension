pragma solidity ^0.8.0;
contract ModifiedExample {
  function modify() public payable {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 50; i++) {
      payable(address(this)).transfer(1 wei);
      _datastorage += 1;
    }
    uint w = 2 ** 256-1;
    assembly {
      w := w + 1
    }
  }
}

pragma solidity ^0.8.0;

import "./ModifiedExample.sol";
contract Example {
  constructor() {}
  function modified() public payable returns(uint) {
      return ModifiedExample().modify();
  }
}
