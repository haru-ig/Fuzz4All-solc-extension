pragma solidity ^0.8.0;
contract ERC20Mock is IERC20 {
    mapping (address => uint256) private _balances;
    mapping (address => mapping (address => uint256)) private _allowed;
    string private _name;
    string private _symbol;

    constructor(string memory name, string memory symbol){
        _name = name;
        _symbol = symbol;
    }

    function balanceOf(address account) public view override returns (uint256) {
        return _balances[account];
    }

    function transfer(address to, uint256 value) public override returns (bool) {
        _balances[msg.sender] -= value;
        _balances[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

    function allowance(address owner, address spender) public view override returns (uint256) {
        return _allowed[owner][spender];
    }

    function approve(address spender, uint256 value) public override returns (bool) {
        _allowed[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function transferFrom(address from, address to, uint256 value) public override returns (bool) {
        _allowed[from][msg.sender] -= value;
        _allowed[to][msg.sender] += value;
        _balances[from] -= value;
        _balances[to] += value;
        emit Transfer(from, to, value);
        return true;
    }
}
