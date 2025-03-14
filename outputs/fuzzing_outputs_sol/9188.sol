pragma solidity ^0.8.0;
contract Caller9 {
  address _receiver;
  address payable _sender;
  constructor(address payable _address) {
    _receiver = _address;
    _sender = msg.sender;
  }
  receive() external payable {
    address myAddress;
    uint256 amountPayable;
    string memory description;
    bytes memory data;
    require(msg.data.length == 1, "Caller9.receive() -> failed");
    assembly {
      myAddress := mload(add(calldatacopy, 0x20))
    }
    description = 'Data passed as msg.data';
    amountPayable = msg.value.value;
    data = msg.data;
  }
}

pragma solidity ^0.8.0;
contract Caller10 {
  address _receiver;
  address payable _sender;
  constructor(address payable _address) {
    _receiver = _address;
    _sender = msg.sender;
  }
  receive() external payable {
    uint256 amountPayable;
    string memory description;
    bytes memory data;
    assembly {
      amountPayable := mload(add(calldataload, 0x20))
    }
    description = 'Raw value passed as msg.value';
    data = msg.data;
  }
}



pragma solidity ^0.8.0;
contract Caller11 {
  address _contractAddress;
  constructor(address _contractAddress) {
    require(address(this).balance < 0);
    _contractAddress = _contractAddress;
    address(0);
  }
  receive() external payable {
  }
  fallback() external payable {
    if (address(this) == _contractAddress) {
      (bool success, ) = payable(_contractAddress).call{value: address(this).balance}('');
      require(success, "Caller11 failed.");
    }
  }
}



pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract Caller12 {
  ERC20 _myEther;
  constructor() {
    _myEther = new ERC20('Ether');
  }
  fallback() external payable {
    require(_myEther.transfer(msg.sender, address(this).balance), "Caller12 failed 1");
    if (!msg.sender.call{value: address(this).balance}("")) throw;
    require(_myEther.transfer(msg.sender, address(this).balance), "Caller12 failed 2");
    if (!msg.sender.call{value: address
