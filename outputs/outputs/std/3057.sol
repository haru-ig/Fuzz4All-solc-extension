pragma solidity ^0.8.0;
interface IERC2612 {
    function _approve(address _owner, address _spender, uint256 _value) external;
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}
