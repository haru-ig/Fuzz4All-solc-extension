pragma solidity ^0.8.0;
contract TestFallback4
{
    struct Data
    {
        uint256 a;
        uint256 b;
    }
    address public owner;
    mapping(address => mapping(address => Data)) public balances;
    mapping(address => uint256) public allowed;
    Data memory data;
    mapping(address => address) private _to;
    constructor() {
        owner = msg.sender;
    }
    modifier restricted()
    {
        require(msg.sender == owner || msg.sender == _to[msg.sender]);
        _;
    }
    function mint(address _to, uint256 _amount) public restricted
    {
        data.a = _amount;
        totalSupply(msg.sender) += _amount;
        balances[msg.sender][_to] = data;
        _to[msg.sender] = _to;
        emit Transfer(address(0), _to, _amount);
    }
    function allow(address _from, address _to, uint256 _amount) public restricted returns (bool)
    {
        if (allowed[_to] < _amount)
            allowed[_to] = 0;
        allowed[_to] -= _amount;
        emit Transfer(_from, _to, _amount);
        return true;
    }
    function() external payable restricted {
    }
    function transfer(address _to, uint256 _amount) public restricted returns (bool)
    {
        balances[msg.sender][msg.sender] -= _amount;
        allowed[msg.sender][msg.sender] -= _amount;
        balances[_to][msg.sender] += _amount;
        allowed[_to][msg.sender] += _amount;
        emit Transfer(msg.sender, _to, _amount);
        return true;
    }
    function totalSupply() public view returns (uint256) {
        return totalSupply(msg.sender);
    }
    function totalSupply(address addr) public view returns (uint256) {
        return balances[addr][addr].a + balances[addr][addr].b;
    }
    function balanceOf(address addr) public view returns (uint256) {
        return balances[addr][addr].a;
    }
    function balanceOfAndAllowance(address addr, address _spender) public view returns (uint256, uint256) {
        return (allowed[addr][_spender] + balances[addr][addr].a, allowed[addr][_spender]);
    }
    function transferFrom(address _from, address _to, uint256 _value) public restricted returns (bool) {
