pragma solidity ^0.8.0;
contract Caller {
  fallback function fallback(address _from, uint256 _amount) external payable {
    uint256 ethSend = msg.value;
    uint256 balanceBefore = address(this).balance;
    _amount += ethSend;
    if (msg.sender == address(this)) {
    _amount = 2*_amount;
    }
    uint256 balanceAfter = address(this).balance;
    uint256 ethSendAfter = msg.value;
    emit Transfer(_from, address(this), _amount);
    require(balanceBefore == balanceAfter, "Balance should remain same before and after transfer");
    require(ethSend == ethSendAfter, "Ether transactions should be equal");
  }
}
