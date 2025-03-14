pragma solidity ^0.8.0;
interface IToken
{
  function name() external view returns (string memory);
  function symbol() external view returns (string memory);
  function totalSupply() external view returns (uint256);
  function decimals() external view returns (uint8);
  function transferOwnership(address newOwner) external returns (bool);
  function transfer(address to, uint256 value) public  returns (bool);
  function transferFrom(
    address _from,
    address _to,
    uint256 _value
  ) external returns (bool);
  function approve(address _spender, uint256 _value) external returns (bool);
  function allowance(address owner, address spender)
    external
    view
    returns (uint256);
  function totalSupplyToken() external view returns (uint256);
  function balanceOf(address _owner) external view returns (uint256);
  function balanceOfToken(address _owner) external view returns (uint256);
  function isTransferable(address token) external view returns (bool);
  function isFungible(address token) external view returns (bool);
  function getPrice() external view returns (uint256);
  function mint(address account, uint256 amount) public returns (address);
}
