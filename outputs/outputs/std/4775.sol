pragma solidity ^0.8.0;
contract Hashmap {
  uint256 public f;
  mapping (uint => bytes) public m;
  bytes32[] public mSet;
  address public add;
  address[] b;
  function hashmap() public {
    mSet.push(keccak256(abi.encode([]))));
    m[msg.sender]=keccak256(abi.encode([]));
    mSet.push(keccak256(abi.encode(uint(87), keccak256(abi.encode([44, 15, 39, 153, 90, 164, 144, 253, 115, 177, 54, 126, 207, 111, 112, 181, 57, 28, 207, 225, 32, 51, 224])))));
    add=msg.sender;
    a();
    mSet.push(keccak256(abi.encode(address(0), address(0))));
    mSet.push(keccak256(abi.encode(address(0), uint())));
    mSet.push(keccak256(abi.encode(address(0), address(0), uint())));
    mSet.push(keccak256(abi.encode(address(0), address(0), address(0), uint())));
    mSet.push(keccak256(abi.encode(address(0), address(0), address(0), uint()), uint())));
    mSet.push(keccak256(abi.encode(address(0), address(0), address(0), address(0), uint()), uint())));
    add=msg.sender;
    a();
    mSet.push(add);
    mSet.push(b);
    mSet.push(f);
    mSet.push(add.transfer(address(k())));
    mSet.push(this.transferOwnership(address(k())));
    mSet.push(add.call(abi.encode(address(k()), uint(1))));
    mSet.push(k().call{value:uint(20)}());
    mSet.push(p());
    mSet.push(this.call(abi.encode(address(k()))));
    a();
    a();
    a();
    a();
    a();
    a();
    a();
    a();
    a();
    a();
    a();
    a();
    a();
    a();
    a();
    a();
    a();
    a();
    a();


    return msg.sender;
  }
  uint[] public  p;
  address[] public sa;
  function k() public payable returns (address) {
    sa.push(msg.sender);
    m[msg.sender] = add;
  }
