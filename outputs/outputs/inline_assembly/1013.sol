pragma solidity ^0.8.0;
contract MyContract {
struct Person {
address address_;
uint height_;
uint weight_;
address next_;
}
mapping(uint => Person) private members;
}
contract AnotherContract {

address getNewAddress() public pure returns (address);
address getAddress() public view returns (address);
uint getHeight() public view returns (uint);
}
