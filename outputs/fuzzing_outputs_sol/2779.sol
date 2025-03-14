pragma solidity ^0.8.0;
contract Caller4 {
    address _addr;
    uint256 _amount;
    constructor(uint256 _amount) { _addr = msg.sender; _amount = _amount; }
    receive() external payable {
        _addr.transfer(_amount);
    }
    fallback() external payable {
    }
    function modify() public {
        _addr.transfer(msg.value);
    }
}
