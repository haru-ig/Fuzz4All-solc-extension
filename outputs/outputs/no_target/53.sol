pragma solidity ^0.8.0;
import IERC223Token;
import './IERC2777.sol';
contract IERC223NativeToken is IERC223Token {
    function transfer(address _to, uint _value) external returns (bool);
    function approve(address _spender, uint _value) external returns (bool);
    function allowance(address _owner, address _spender) external view returns (uint256);
}
