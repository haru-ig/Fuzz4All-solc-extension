pragma solidity ^0.8.0;
contract Mutate {
    address payable[] storage addresses;
    uint256[] storage amounts;
    bytes32 public name;
    constructor(uint256[] memory amounts_, bytes32 name_) public{
        addresses = new address payable[](amounts.length);
        amounts = new uint256[](amounts.length);
        addresses = new address payable[](amounts.length);
        addresses[0] = payable(msg.sender);
        amounts = new uint256[](1);
        amounts[0] = amounts_[0];
        name = name_;
    }


}
