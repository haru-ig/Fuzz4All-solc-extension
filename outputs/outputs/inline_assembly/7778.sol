pragma solidity ^0.8.0;
contract L15 {
    using SafeMath for uint256;

    uint256 private totalSupply;
    mapping(address => uint256) private balances;
    mapping(address => mapping(address => uint256)) private allowances;
    constructor() public {
        totalSupply = 20 usd;
    }
    function increaseTotalSupply(uint256 _value) public {
        totalSupply += _value;
    }
    function decreaseTotalSupply(uint256 _value) public {
        totalSupply -= _value;
    }
    function increaseBalance(address _beneficary, uint256 _value) public {
        balances[_beneficary].add(_value);
    }
    function decreaseBalance(address _beneficary, uint256 _value) public {
        balances[_beneficary].sub(_value);
    }
    function transferBalance(address _from, address _to, uint256 _amount) public {
        balances[_to].sub(_amount);
        balances[_from].add(_amount);
    }
    function safeTransferBalance(address _beneficary, uint256 _amount) public {
        if (balances[_beneficary].sub(_amount) < 0) {
            revert();
        }
        balances[_beneficary].sub(_amount);
        balances[_from].add(_amount);
    }
    function withdrawBalance(address _beneficary, uint256 _amount) public {
        uint256 actualBalance = balances[_beneficary];
        if (actualBalance > _amount) {
            balances[_beneficary].sub(_amount);
            actualBalance = 0;
        } else {
            balances[_beneficary] -= _amount;
            actualBalance -= _amount;
        }
        address payable payer = payable(msg.sender);

    }
    function approve(address _spender, uint256 _value) public {
        allowances[msg.sender][_spender] = _value;
    }
    function getAllowance(address _owner, address _spender) public view returns (uint256) {
        return allowances[_owner][_spender];
    }
}

pragma solidity ^0.8.0;
contract L22 {
    using SafeMath for uint256;
    uint256 private totalSupply;
    mapping(address => uint256) private balances;
    mapping(address => mapping(address => uint256)) private allowances
