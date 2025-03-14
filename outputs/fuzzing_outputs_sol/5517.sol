pragma solidity ^0.8.0;
contract sendtx100
{
    uint256 constant public ETHER = 10**18;
    mapping(address=>uint256) public balances;

    fallback() external payable {}

    function payable() external payable {}

    function withdraw(uint256 _amount) external {
        require(balances[msg.sender] >= _amount);

        uint256 balance = balances[msg.sender];
        balances[msg.sender] = 0;

        message.sender.transfer(_amount.mul(balance))
    }

    function () external {
        withdraw(ETHER);
    }
}
