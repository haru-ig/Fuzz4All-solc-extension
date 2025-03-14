pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";
contract Test is Ownable {
    mapping (address => bool) public isKnown;
    uint public test;
    constructor() public owned{ }
    function isKnown(address _address) public view returns(bool) { return isKnown[_address]; }
    function add(uint _val) public { if (isKnown(_msgSender())) { test += Test.isTrue(_val); } }
}
