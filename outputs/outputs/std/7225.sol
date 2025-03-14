pragma solidity ^0.8.0;

contract SimpleToken
{
  address public owner;


  event Transfer(address indexed _from, address indexed _to, uint  _value);


  constructor ()
  {
    owner = msg.sender;
    totalSupply_ = 1000 * (10 ** 18);
  }

  function getTotalSupply() public view returns (uint256)
  {
    return totalSupply_;
  }

  function transfer(address _to, uint256 _value) public
  {
    require(msg.sender == owner);
    transferInternal(_to, _value);
  }

  function transferInternal(address _to, uint256 _value) internal
  {
    require(_to!= address(0));


    emit Transfer(msg.sender, _to, _value);


    totalSupply_ -= _value;


    require(totalSupply() >= _value);


    tokenOwners_[_to] = _value;
  }

  function() externalpayable
  {
    tokenFallback_(msg.sender);
  }


  function tokenFallback_(address _from) internal
  {
    revert("must be the token owner");
  }
}
