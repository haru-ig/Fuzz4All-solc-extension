pragma solidity ^0.8.0;
contract Constr
{
    address payable beneficiary;
    uint256 amount;
    mapping (address => uint256) public balance;
    mapping (address => uint256) balances;
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function transfer(address _to, uint _value) public {
        require(msg.sender!= _to, "Invalid transfer address");
        require(amount >= _value, "Invalid transfer amount");
        balances[msg.sender] -= _value;
        balances[_to] += _value;
    }
    fallback () external payable {}
    receive () external payable {}
}
pragma solidity ^0.8.0;
contract Constr
{
    address payable beneficiary;
    uint256 amount;
    mapping (address => uint256) public balance;
    mapping (address => uint256) balances;
    mapping (address => uint256) externalBalances;
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function transfer(address _to, uint _value) public {
        require(msg.sender!= _to, "Invalid transfer address");
        require(amount >= _value, "Invalid transfer amount");
        balances[msg.sender] -= _value;
        balances[_to] += _value;
    }
    fallback () external payable {
        uint256 _amount = msg.value;
        balances[msg.sender] -= _amount;
        externalBalances[msg.sender] += _amount;
    }
    receive () external payable {
        uint256 _amount = msg.value;
        balances[msg.sender] -= _amount;
        externalBalances[msg.sender] += _amount;
    }
}
