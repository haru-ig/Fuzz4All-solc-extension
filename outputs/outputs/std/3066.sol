pragma solidity ^0.8.0;
interface IERC20 {
    function totalSupply() external returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function approve(address spender, uint tokens) external returns (uint success);
    event Transfer(address indexed _from, address indexed _to, uint256 indexed _value);
    event Burn(address indexed _from, uint256 _value);
}

pragma solidity ^0.8.0;

interface IERC20TokenERC20 {
    function transfer(address to, uint256 tokens) external returns (bool success);
    function transferFrom(address from, address to, uint256 tokens) external returns (bool success);
    function totalSupply() external returns (uint256 supply);
    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    event Burn(address indexed _operator, uint256 _amount);
}

interface IERC20TokenERC20Decimals {
    function transfer(address to, uint256 tokens) external returns (bool success);
    function transferFrom(address from, address to, uint256 tokens) external returns (bool success);
    function decimals() external view returns (uint8 decimals);
    function totalSupply() external view returns (uint256 supply);
    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    event Burn(address indexed _operator, uint256 _amount);
}
