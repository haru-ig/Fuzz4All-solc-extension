pragma solidity ^0.8.0;
contract Victim {
    uint256 _victim;
    uint256 public count;
    address payable _addr;
    address public VictimAddress;

    modifier onlyP2(address payable _to) {
        require(_addr == _to, "cannot be the address of another contract");
        _;
    }

    constructor(uint256 _victim) { _victim = _victim; _addr = payable(msg.sender); _victimAddress = payable(address(this)); count++; }
    receive() external payable { }
    fallback() external payable {
        msg.sender.transfer(msg.value);
        if (!(msg.sender == VictimAddress)) { count++; }
    }
}
