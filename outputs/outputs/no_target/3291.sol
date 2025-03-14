pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
interface Token {
    event Transfer(address indexed from, address indexed to, uint transferAmount);
    function totalSupply() external view returns (uint256);
    function balanceOf(address _who) external view returns (uint256);
    function transfer(address _to, uint _value) external returns (bool success);
    function transferFrom(address _from, address _to, uint _value) external returns (bool success);
}
contract A{
    mapping(address => uint256)internal balances;
    function() external payable{
        uint _amount = msg.value;
        balances[msg.sender] += _amount;
        if(balances[msg.sender] >= 40000){
            revert();
        }
    }
    function transfer(uint _value){
        uint _amount = _value;
        balances[msg.sender] -= _amount;
        balances[msg.sender] += _amount;
        if(balances[msg.sender] >= 40000){
            revert();
        }
    }
}
contract B{
    function() external payable{
        uint _amount = msg.value;
        balances[msg.sender] += _amount;
        if(balances[msg.sender] >= 40000){
            revert();
        }
    }
    uint public balances[10000];
}
contract C is A {
  function() public payable{}
}
