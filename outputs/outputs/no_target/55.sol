pragma solidity ^0.8.0;
interface IERC223AllowanceToken {
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    function transferFrom(address _from, address _to, uint _value) external returns (bool);
    function increaseApproval(address _spender, uint _addedValue) external returns (bool);
    function decreaseApproval(address _spender, uint _subtractedValue) external returns (bool);
    function setAllowance(address _spender, uint _value)external returns (bool);
    function allowance(address _owner, address _spender) external view returns (uint256);
}

pragma solidity ^0.8.0;
