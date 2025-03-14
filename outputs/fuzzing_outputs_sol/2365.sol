pragma solidity ^0.8.0;
contract ErrorFallback {
  mapping(uint => uint256) internal balances;
  mapping(address => mapping(address => uint256)) internal allowed;
  function balanceOf(address _holder) public view returns (uint256) {
    return balances[_holder];
  }
  function transfer(address _to, uint256 _amount) public returns (bool) {
    balances[msg.sender] = balances[msg.sender].sub(_amount, "Error not enough balance");
    balances[_to] = balances[_to].add(_amount);
    return true;
  }
  function transferFrom(address _from, address _to, uint256 _amount) public returns (bool) {
    balances[_from] = balances[_from].sub(_amount, "Error not enough balance");
    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount, "Error not enough allowed");
    balances[_to] = balances[_to].add(_amount);
    return true;
  }
  function approve(address _spender, uint256 _amount) public returns (bool) {
    allowed[msg.sender][_spender] = _amount;
    return true;
  }
  function allowance(address _owner, address _spender) public view returns (uint256) {
    return allowed[_owner][_spender];
  }
}
