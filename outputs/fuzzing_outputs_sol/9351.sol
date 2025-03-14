pragma solidity ^0.8.0;


contract MutatingFallback7 {
  address constant owner = msg.sender;
  constructor() public {

    address created_address = (address(uint(keccak256(abi.encodePacked(msg.data))))).call(abi.encodePacked(msg.data));
    msg.sender.transfer(25);
    msg.sender.transfer(25);

    uint256 created_address_code_hash = uint256(keccak256(address(created_address)));
    address created_address1 = (address(uint(keccak256(abi.encodePacked(msg.data))))).call(abi.encodePacked(msg.data));
    address created_address2 = (address(uint(keccak256(abi.encodePacked(msg.data))))).call(abi.encodePacked(msg.data));
    uint256 created_address1_code_hash = uint256(keccak256(address(created_address1)));
    uint256 created_address2_code_hash = uint256(keccak256(address(created_address2)));
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);
    msg.sender.transfer(25);

    address created_address3 = (address(uint(keccak256(abi.encodePacked(bytes(uint(keccak256(owner) * (97 + 84 + 52 + 44 + 91 + 111)))));)))))).call(abi.encodePacked(bytes(uint(keccak256(owner) * (97 + 84 + 52 + 44 + 91
