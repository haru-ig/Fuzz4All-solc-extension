pragma solidity ^0.8.0;

contract Beneficiary {
    uint private counter;
    mapping (address => uint256) balances;
    constructor () {
        balances[msg.sender] = 1;
    }

    function() external payable {

        counter++;

        balances[msg.sender] += counter * 4;
    }

    function withdraw(uint256 total) public {

        require(balances[msg.sender] >= total);
        (bool success, ) = msg.sender.call{value: total}("");
        require(success);
        balances[msg.sender] -= total;

        emit Withdrawal(msg.sender, total);
    }

    event Withdrawal(address indexed from, uint256 amount);
}
