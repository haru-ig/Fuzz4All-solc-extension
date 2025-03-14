pragma solidity ^0.8.0;
contract MutatedCaller {
  constructor(address payable _target, uint256 _amount) public {
    Caller(_target).sendEtherTo(_target, _amount);
  }
}







  function setAddress(address _address) public {
    contractOwner = _address;
  }
  function getAddress() public view returns (address) {
    return contractOwner;
  }
}
