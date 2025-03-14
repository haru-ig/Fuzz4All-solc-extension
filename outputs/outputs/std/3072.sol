pragma solidity ^0.8.0;
interface IERC20TokenERC20Decimals {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256 balance);
    function transfer(address to, uint256 tokens) external returns (bool success);
    function transferFrom(address from, address to, uint256 tokens) external returns (bool success);
    function decimals() external view returns (uint8 decimals);
    function balanceOfDecimals(address account, uint decimals) external view returns (uint256 balance);
    function approve(address spender, uint tokens) external returns (bool success);
    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    event Burn(address indexed _operator, uint256 _amount);
}

pragma solidity ^0.8.0;
contract IERC20TokenERC20Decimals {
    mapping(address => uint256) private balances;
    mapping(address => mapping(address => uint256)) private allowed;
    uint8 private decimals;
    uint256 private totalSupply = 0;

    constructor(uint256 INITIAL_SUPPLY, uint8 DECIMALS) public {
        balances[msg.sender] = INITIAL_SUPPLY;
        decimals = DECIMALS;
        totalSupply = INITIAL_SUPPLY * (10 ** uint256(decimals));
    }

    modifier onlyToken() {
        require(msg
