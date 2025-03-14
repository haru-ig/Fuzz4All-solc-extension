pragma solidity ^0.8.0;
import "./IERC20.sol";
contract Token is IERC20 {
    string private _name;
    string private _symbol;
    uint8 private _decimals;
    mapping (address => uint256) private _balances;
    address private _owner;
    mapping (address => mapping (address => uint256)) private _allowances;
    uint256 private _totalSupply = 0;
    bytes32 private constant _TOKEN_NAME = "MyToken";
    bytes32 private constant _TOKEN_SYMBOL = "MYTOK";

    uint256 public constant totalSupply  =  1000000e30;

    function balanceOf(address account) public view virtual returns (uint256);
    function name() public view virtual returns (string memory);
    function symbol() public view virtual returns (string memory);
    function decimals() public view virtual returns (uint8);
    function totalSupply() public view virtual returns (uint256);
    function transfer(address to, uint256 value) public virtual returns (bool);
    function approve(address spender, uint256 value) public virtual returns (bool);
    function allowance(address owner, address spender) public view virtual returns (uint256);
    function _transfer(address from, address to, uint256 value) internal virtual;
    function _mint(address account, uint256 amount) internal virtual;
    function _burn(address account, uint256 amount) internal virtual;
    function _burnFrom(address account, uint256 value) private view virtual;
    function _approveAllowance(address owner, address spender, uint256 value) private virtual;
}
