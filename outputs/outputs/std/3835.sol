pragma solidity ^0.8.0;
interface IToken {
    function totalSupply() external view returns (uint256 totalSupply);
    function balanceOf(address _owner) external view returns (uint256 balance);
    function sendTo(address _to, uint256 _value) external returns (uint256);
    function transfer(address _to, uint256 _value) external returns (bool success);
    function transferFrom(address _from, address _to, uint256 _value) external returns (bool success);
    function approve(address _spender, uint256 _value) external returns (bool success);
    function allowance(address _owner, address _spender) external view returns (uint256 remaining);
}
