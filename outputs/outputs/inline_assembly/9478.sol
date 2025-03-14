pragma solidity ^0.8.0;
contract NonFungibleToken {
    uint     public totalSupply;
    string   publicname;
    mapping (address => uint256)balances;
    mapping(address => mapping (address => uint256))allowances;
    constructor(uint _initialSupply, string calldata _name, address _contractAddress) {
        totalSupply = _initialSupply;
        name = _name;
        balances[msg.sender] = _initialSupply;
        contractAddress = _contractAddress;
    }
    function transfer(address _to, uint _value) public returns (bool success){
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
    function transferFrom(address _from, address _to, uint _value) public returns (bool success){
        balances[_to] += _value;
        balances[_from] -= _value;
        allowances[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value);
        return true;
    }
    function increaseAllowance(address _spender, uint _value) public returns (bool success){
        allowances[msg.sender][_spender] += _value;
        emit AllowanceIncreased(msg.sender, _spender, _value);
        return true;
    }
    function decreaseAllowance(address _spender, uint _value) public returns (bool success){
        uint old = allowances[msg.sender][_spender];
        if (old < _value) revert();
        if (old > _value) {
        allowances[msg.sender][_spender] = 0;
        emit AllowanceDecreased(msg.sender, _spender, _value);
        }
        return true;
    }
    function balanceOf(address _address) public returns (uint balance){
        return balances[_address];
    }
    function name() public returns (string memory){
        return name;
    }
}
