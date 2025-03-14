pragma solidity ^0.8.0;
contract SimpleToken {
    string public name = "<NAME>";
    string public symbol = "TOKEN";
    uint256 public totalSupply_;
    mapping(address => uint256) balances_;
    mapping(address => mapping(address => uint256)) allowed_;
    bool public transfersEnabled = true;

    constructor () {
        totalSupply_ = balances_[address(this)] = 150000;
    }


    modifier onlyTransferEnabled () {
        require(transfersEnabled, "Token transfers disabled");
        _;
    }

    function transfer(address to, uint wadValue) public onlyTransferEnabled returns (bool) {
        balances_[msg.sender] = balances_[msg.sender].sub(wadValue);
        balances_[to] = balances_[to].add(wadValue);
        emit Transfer(msg.sender, to, wadValue);
        return true;
    }


    function allowance(address owner, address spender) public view returns (uint256) {
        return allowed_[owner][spender];
    }

    function approve(
        address spender,
        uint wadValue
    ) public onlyTransferEnabled returns (bool) {
        allowed_[msg.sender][spender] = wadValue;
        emit Approval(msg.sender, spender, wadValue);
        return true;
    }

    function increaseAllowance(address spender, uint wadValue) public returns (bool) {
        if (allowed_[msg.sender][spender] == uint(-1)) emit Approval(msg.sender, spender, wadValue);
        bool success = allowed_[msg.sender][spender].add(wadValue) >= wadValue;
        allowed_[msg.sender][spender] = success? wadValue : allowed_[msg.sender][spender];
        emit Approval(msg.sender, spender, wadValue);
        return success;
    }

    function decreaseAllowance(address spender, uint wadValue) public returns (bool) {
        uint oldAllowed = allowed_[msg.sender][spender];
        bool success = oldAllowed >= wadValue;
        allowed_[msg.sender][spender] = success? (oldAllowed - wadValue) : 0;
        emit Approval(msg.sender, spender, oldAllowed);
        return success;
    }
}
