pragma solidity ^0.8.0;
interface IERC223AllowanceToken {
    function setAllowance(address _spender, uint _value, ) external returns (bool);
    function increaseApproval(address _spender, uint _addedValue, ) external returns (bool);
    function decreaseApproval(address _spender, uint _subtractedValue, ) external returns (bool);
    function transferFrom(address _from, address _to, uint256 _value, ) external returns (bool);
    function allowance(address _owner, address _spender, ) external view returns (uint256);
    function approveAndCall(address _spender, uint _value, bytes calldata _data, bytes calldata _extraData, bool _isStaticCall, uint32 _gasPrice, uint32 _gasLimit, ) external returns (bool, bytes memory);
}
