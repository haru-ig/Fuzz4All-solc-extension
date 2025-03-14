pragma solidity ^0.8.0;
contract Computation
{
    uint public a;
    uint public b;
    constructor() {
        a = 10;
        b = 2;
    }
    function multiply() public {
        b = b * a;
        a = a * b;
    }
    function setA(uint x) public {
        a = x;
    }
    function getA() view public returns (uint) {
        return a;
    }
    function setB(uint x) public {
        b = x;
    }
    function getB() view public returns (uint) {
        return b;
    }
}


contract Token {
    constructor(uint initialSupply) public {
        totalSupply_ = initialSupply;
        balances[msg.sender] = initialSupply;
    }

    function allowance(address guy, address token) public view returns (uint256);

    function owner() public view returns (address);

    function balanceOf(address token) public view returns (uint256);

    function transfer(address token, uint256 value) public returns (bool);

    function transferOwnership(address token) public returns (bool);

    function approve(address token, uint256 value) public returns (bool);

    function increaseAllowance(address token, uint256 value) public returns (bool);

    function decreaseAllowance(address token, uint256 value) public returns (bool);

    function transferFrom(address token, address tokenFrom, uint256 value) public returns (bool);

    uint256 public totalSupply_;

    mapping (address => uint256) private balances;

    event Transfer(address indexed token, address indexed from, address indexed to, uint256 amount);

    event Approval(address indexed token, address indexed spender, uint256 amount);
}

contract CompoundToken is Token {
    constructor(uint initialSupply, address initialManager) public
    Token(initialSupply)
    {
        balances[initialManager] = balances[initialManager].sub(initialSupply);
        balances[address(this)] = balances[address(this)].sub(balances[initialManager]);
    }

    function balanceOf(address token) public view returns (uint256) {
        if (token == address(this)) {
            return balances[address(this)];
        } else {
            return super.balanceOf(token);
        }
    }

    function
