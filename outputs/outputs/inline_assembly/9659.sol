pragma solidity ^0.8.0;
interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address _owner) external view returns (uint256);
    function allowance(address _owner, address _spender) external view returns (uint256);
    function transferAllowance(address _spender, uint _amount) external returns (bool);
    function transferFrom(address _from, address _to, uint256 _value) external returns (bool);
}
pragma solidity ^0.8.0;
contract SimpleMint {
  uint value;

  constructor(uint _value) public
  {
    value = _value;
  }

  function mint() external
  {
    value += 1;
  }

  function getValue() public view returns (uint)
  {
    return value;
  }

  function transfer(address _to, uint _value) external
  {
    _to.transfer(_value);
  }
}
