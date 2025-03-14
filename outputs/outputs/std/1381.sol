pragma solidity ^0.8.0;
contract Array2 {

    uint[] nums;
    mapping(uint => string) names;
    struct User {
      address addr;
      string name;
    }
    mapping(address => User) users;
}
