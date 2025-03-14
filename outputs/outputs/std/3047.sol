pragma solidity ^0.8.0;
contract ERC20_M {

  string public constant name = "MockERC20-Mu_M";


  string public constant symbol = "MVMT";


  uint8 public constant decimals = 18;

  constructor (uint256 _initialSupply) {

    totalSupply_ = _initialSupply;
    balances_[msg.sender] = _initialSupply;
  }


  function transferFrom(
    address _from,
    address _to,
    uint256 _value
  ) public returns (bool) {
    balances_[_from] = balances_[_from].sub(_value);
    balances_[_to] = balances_[_to].add(_value);
    emit Transfer(_from, _to, _value);
    return true;
  }


  function transferFromWithTokenFallback(
    address _from,
    address _to,
    uint256 _value
  ) public returns (bool) {
    balances_[_from] = balances_[_from].sub(_value);
    balances_[_to] = balances_[_to].add(_value);
    emit Transfer(_from, _to, _value);
    _to.call{value: _value}("");
    return true;
  }


  function totalSupply() public view returns (uint256) {
    return totalSupply_;
  }


  function balanceOf(address _owner) public view returns (uint256) {
    return balances_[_owner];
  }


  modifier onlySubtractSenderTokens(address _sender, uint256 _subtractedThe) {
    require(balances_[msg.sender] >= _subtractedThe, "tokens not in contract balance");
