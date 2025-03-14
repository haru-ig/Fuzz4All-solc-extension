pragma solidity ^0.8.0;
contract Example
{
    mapping (address => uint256) balances;
    function transfer(address _beneficiary) public {
        uint256 _amount = balances[_beneficiary];
        balances[_beneficiary] = 0;
        Transfer(_beneficiary, msg.sender, _amount);
    }
}
