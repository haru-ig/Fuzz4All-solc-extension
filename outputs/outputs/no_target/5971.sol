pragma solidity ^0.8.0;



pragma solidity >=0.4.22 <0.8.0;


contract ERC20_MintBurn {
    mapping (address => uint256) internal _balances;

    mapping (address => mapping (address => uint256)) internal _allowed;

    uint256 internal _totalSupply;

    mapping (address => string) internal _name;

    mapping (address => string) internal _symbol;

    mapping (address => uint8) internal _decimals;


    function totalSupply() public view virtual returns (uint256);


    function balanceOf(address who) public view virtual returns (uint256);


    function transfer(address recipient, uint256 amount) public virtual returns (bool success);


    function allowance(address _owner, address spender) public view virtual returns (uint256);


    function approve(address spender, uint256 amount) public virtual returns (bool success);


    function transferFrom(address sender, address recipient, uint25
