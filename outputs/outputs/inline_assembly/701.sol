pragma solidity ^0.8.0;
contract Mutator11 {
    uint256 constant a = 3;
    uint256 constant b = 2;
    uint256 constant c = 1;
    uint256 constant d = 0;
    uint256 constant e = 6;
    uint256 constant f = 5;
    uint256 constant g = 4;

    using SafeMath for uint256;

    mapping (uint256 => uint256) public balances;
    mapping (address => mapping (address => uint256)) internal allowed;
    uint256 internal totalSupply_;
    uint256 public constant decimals = 10**18;

    constructor(uint256 totalSupply) {
        totalSupply_ = totalSupply;
    }


    function approve (address spender, uint tokens) public virtual returns (bool) {
        allowed[msg.sender][spender] = tokens;
        return true;
    }


    function transferFrom(address sender, address recipient, uint tokens) public virtual returns (bool) {
        balances[sender] = balances[sender].sub(tokens);
        allowed[sender][msg.sender] = allowed[sender][msg.sender].sub(tokens);
        balances[recipient] = balances[recipient].add(tokens);
        emit Transfer(sender, recipient, tokens);
        return true;
    }


    function totalSupply() public view virtual returns (uint256) {
        return totalSupply_;
    }


    function name() public view virtual returns(string memory) {
        return "Test Name";
    }


    function symbol() public view virtual returns(string memory) {
        return "TEST";
    }


    function balanceOf(address _owner) public view virtual returns (uint256) {
        return balances[_owner];
    }


    function transfer(address _to, uint256 _value) public virtual returns (bool) {
        balances[msg.sender] = balances[msg.sender].sub(_value);
        balances[_to] = balances[_to].add(_value);
        emit Transfer(msg.sender, _to, _value);
        return true;
    }



    function allow
