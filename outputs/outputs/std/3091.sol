pragma solidity ^0.8.0;
contract MyAddressableContract {
  address payable addr;
  constructor() {
    addr = payable(msg.sender);
  }
  function changeAddress() public {
    uint256 i = 0;
    for (i = 8; i < 15; ++i) {
      msg.sender.transfer(0);
    }
  }
}

pragma solidity ^0.8.0;
contract MyAddressableContract {
  address payable addr;
  constructor() {
    addr = payable(msg.sender);
  }
  function changeAddress() public {
    uint256[6] uints;
    uints[0] = 1;
    uints[1] = 2;
    bytes memory bytes1 = abi.encode(uints[1]);
    bytes32 bytes321 = abi.decode(bytes1, (uint256[6]));
    addr.transfer(bytes321);
  }
}
