pragma solidity ^0.8.0;

import "./IERC20.sol";

contract BurnToken is IERC20 {
    mapping (address => uint256) public balances;
    mapping (address => mapping (address => uint256)) internal allowed;
    address private _owner;
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Burn(uint amount);

    constructor(address owner) {
        _owner = owner;
        balances[owner] = 100 * 10**18;
    }

    function mint() public {
        require(msg.sender == _owner, "Only owner can mint");

        for(uint i=0; i<100; i++){
            _mint(address(this), 1);
        }
    }

    function burn(uint ammount) public {
        balances[msg.sender] = add(balances[msg.sender], ammount);
        _burn(msg.sender, ammount);
        require(balances[msg.sender] == 0);
    }

    function burnFrom(address account, uint ammount) public {
        uint originalBalance = balances[account];

        balances[account] = add(originalBalance, sub(originalBalance, ammount));
        balances[_owner] = add(balances[_owner], ammount);
        allowed[account][msg.sender] = sub(allowed[account][msg.sender], ammount);
        _burn(account, ammount);

        require(balances[account] >= ammount);
    }

    function approve(address spender, uint256 value) public returns (bool) {
        allowed[msg.sender][spender] = value;

        emit Approval(msg.sender, spender, value);

        return true;
    }

    function transferFrom(address from, address to, uint value) public returns (bool) {
        if (value > allowed[from][msg.sender])
            revert();

        allowed[from][msg.sender] = sub(allowed[from][msg.sender], value);

        balances[from] =
