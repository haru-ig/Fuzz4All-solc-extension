pragma solidity ^0.8.0;
contract MutatedSemanticsExample is MutatedSemanticsFallback {
    mapping (address => uint256) public userToBalance;
    constructor () { userToBalance[msg.sender] = uint256(address(this)); }
    function change(uint256 _balance) public { userToBalance[msg.sender] = _balance; }
    function balanceBy(address _address) public view returns (uint256) { return userToBalance[_address]; }
}
