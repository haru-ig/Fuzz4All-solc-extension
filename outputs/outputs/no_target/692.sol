pragma solidity ^0.8.0;
contract Counter {
    using SafeMath for uint256;

    mapping (address => uint256) balances;
    uint256 totalSupply_;

    constructor (uint256 initialSupply) public {
        balances[msg.sender] = initialSupply;
        totalSupply_ = initialSupply;
    }

    function spend (uint256 amount) public {
        require(msg.sender == address(this), "Spender must own this contract");
        balances[msg.sender] =balances[msg.sender].sub(amount);
        uint256 balance = totalSupply_.add(amount);
        totalSupply_ = balance;
    }

    function spendAll () public {
        require(msg.sender == address(this), "Spender must own this contract");
        uint256 balance =totalSupply_.add(balances[msg.sender]);
        totalSupply_ = balance;
        balances[msg.sender] = 0;
    }
}
