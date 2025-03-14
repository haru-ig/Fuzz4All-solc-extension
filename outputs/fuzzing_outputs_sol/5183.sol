pragma solidity ^0.8.0;
contract C22 is C21 {
    receive () external payable {}
}

pragma solidity ^0.8.0;
contract C {
  address payable[] public targets;

  function getAddressAt(uint256 i) view public returns(address payable) {
      return targets[i];
  }
}
contract C23 is C {
  function getAddressAt(uint256 i) view external returns(address) {
      return targets[i];
  }

  receive() external payable {}
}
