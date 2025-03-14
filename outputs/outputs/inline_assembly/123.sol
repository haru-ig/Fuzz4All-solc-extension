pragma solidity ^0.8.0;
contract E {
  uint public _number;
  constructor() {
    _number = 0;
  }
  function incrementNumber() public {
    _number = _number + 1;
  }
}
contract G {
  uint public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
contract Program {
  address public deployer;
  uint256 public startBlock;
  uint8 constant public version = 2;
  uint8 constant public decimals = 5;

  string public _name;
  string public _symbol;
  string public _image;
  constructor(uint256 startBlock_) {
    deployer = msg.sender;
    startBlock = startBlock_;
    _name = "Contract.sol";
    _symbol = "C";
    _image = "contract.png";
  }

  function setVersion(uint8 _version) public {
    if(msg.sender == deployer) {
      version = _version;
    }
  }
  function setContractName(string memory _name_) public {
    if(msg.sender == deployer) {
      _name = _name_;
    }
  }
}

contract Program2 is Program {
  uint8 constant public version = 3;

  uint internal constant decimals = 3;
  address public immutable deployerOwner;

  uint internal constant maxContractSizeLimit = 1000000000;


  function Program2() program {
    deployerOwner = msg.sender;
  }

  function createEInstance() public returns (E) {
    E memory x;
    x.incrementNumber();
    return x;
  }

  function createGInstance() public returns (G) {
    G memory x;
    x.decrementNumber();
    return x;
  }
  function getContractCodeHash() public returns (bytes32) {
    return keccak256(abi.encodePacked(E(0).x, G(0).x, 0, 0));
  }

  function isValidContract() public view returns (bool) {
   bool contractValid =
    getContractCodeHash()
   == keccak256(abi.encodePacked(E(0).x, G(0).x, 0, 0));
    return contractValid;
  }
}

contract Program3 is Program {
  uint8 constant public version =
