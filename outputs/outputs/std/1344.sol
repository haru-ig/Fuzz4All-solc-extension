pragma solidity ^0.8.0;
contract NumberMutatorsMutated_Mutated {
    mapping (address => uint256) private balances;
    function balanceOf(address _owner) public view returns(uint256);
    uint private totalSupply_ = 3;
    string private name_;
    string private symbol_;
    uint8 private decimals_;

    constructor() public {
        name_ = "NAME1";
        symbol_ = "SYMBOL1";
        decimals_ = 18;
        totalSupply_ = 0;
    }
    function transfer(address _to, uint256 _value) public returns (bool success) {
        balances[msg.sender] = balances[msg.sender].sub(_value);
        balances[_to] = balances[_to].add(_value);
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) public returns (bool success) {
        var _allowance = IERC20(_from).allowance(_from, msg.sender);
        if (_value > _allowance) {
            revert();
        }

        balances[_from] = balances[_from].sub(_value);
        balances[_to] = balances[_to].add(_value);
        IERC20(_to).safeIncreaseAllowance(_from, _allowance.sub(_value));
        emit Transfer(_from, _to, _value);
        return true;
    }
    function approve(address _spender, uint256 _value) public returns (bool success) {
        IERC20(_spender).safeIncreaseAllowance(msg.sender, _value);
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
    function totalSupply() public view returns (uint256) {
        return totalSupply_;
    }
    function balanceOf(address _owner) public view returns (uint256 balance) {
        return balances[_owner];
    }
}
