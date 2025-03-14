pragma solidity ^0.8.0;
interface IERC20 {
    uint256 public totalSupply();
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
 }
contract ApproveAndCallFallBack {
    function receiveApproval(address from, uint256 amount, bytes memory data) public;
}
contract Greeter is IERC20, ApproveAndCallFallBack {
    constructor() public {
      _totalSupply = 10000;
      _balances[msg.sender] = 10000;
    }
    event Transfer(address indexed from, address indexed to, uint256 value);
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private allowances;
    uint256 private _totalSupply;
    string private _name;
    string private _symbol;
    uint8 private _decimals;
    constructor(
        string memory name_,
        string memory symbol_,
        uint8 decimals_
    ) public {
        _name = name_;
        _symbol = symbol_;
        _decimals = decimals_;
    }

    function () public payable {
        throw "";
    }

    function name() public view returns (string memory) {
        return _name;
    }

    function symbol() public view returns (string memory) {
        return _symbol;
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }

    function totalSupply() public view virtual override returns (uint256) {
