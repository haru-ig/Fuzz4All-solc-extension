pragma solidity ^0.8.0;
contract C
{

    constructor() payable {}


    modifier onlyExternal() {
        require(msg.sender == address(external));
        _;
    }


    receive() external payable {}

    mapping(address => uint) internal balances;


    function transfer(address recipient, uint amount) external onlyExternal returns (bool) {
        balances[msg.sender] += amount;

        recipient.transfer(amount);

        return true;
    }


    function balanceOf(address account) public view returns (uint balance) {
        return balances[account];
    }
}
