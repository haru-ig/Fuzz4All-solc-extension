pragma solidity ^0.8.0;
contract Mutated
{

  uint32 public version = 0;
  constructor() {
    assembly {
      x_mutated := mload(0x40)
    }
  }
  mapping(address => bool) public owners;
  mapping(address => address) private mutants;
  mapping(address => uint) public balanceOf;
  uint32 public counter = 0;


  function getVersion() public view returns (uint32) {
    return version;
  }

  function isOwner(address _address) public view returns (bool owner) {
    if (x!= uint160(0)) owner = x == _address;
    else owner = owners[_address];
  }

  function getMutant() public view returns (address) {
    if (x!= uint160(0) && x!= uint160(_address)) return mutants[x];
  }

  modifier onlyModder() {
    if (!isOwner(msg.sender)) revert();
    _;
  }
  function getMutantAddress() public view returns (address) {
    if (x!= uint160(0) && x!= uint160(_address)) return mutants[uint160(_address)];
  }

  function addMutant() public onlyModder {
    version++;

    assembly {



      counter := counter + 4
      mstore(x_mutated, counter)
    }

    mutants[uint160(_address)] = msg.sender;

    addBalance(msg.sender, msg.value);
  }


  function updateCounter(address _owner) public onlyModder {
    version = uint32(counter);

    mutants[uint1
