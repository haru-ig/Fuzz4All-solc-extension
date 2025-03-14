pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract ERC20Mock is ERC20 {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => uint)) public allowances;

    constructor() {
        balances[msg.sender] = 1000;
        emit Transfer(address(0), msg.sender, 1000, "");
    }

    function transfer(address to, uint amount) override returns (bool) {
        balances[msg.sender] -= amount;
        balances[to] += amount;
        emit Transfer(msg.sender, to, amount, "");
        return true;
    }

    function allowance(address owner, address spender) public view returns (uint) {
        return allowances[owner][spender];
    }

    function increaseAllowance(address spender, uint addedValue) public returns (bool) {
        allowances[msg.sender][spender] += addedValue;
        emit Approval(msg.sender, spender, allowances[msg.sender][spender]);
        return true;
    }

    function decreaseAllowance(address spender, uint subtractedValue) public returns (bool) {
        assert(subtractedValue <= allowances[msg.sender][spender]);
        uint oldAllowance = allowances[msg.sender][spender];
        if (subtractedValue > oldAllowance) {
            allowances[msg.sender][spender] = 0;
        } else {
            allowances[msg.sender][spender] = oldAllowance - subtractedValue;
        }
        emit Approval(msg.sender, spender, oldAllowance);
        return true;
    }
}
