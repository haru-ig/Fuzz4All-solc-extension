pragma solidity ^0.8.0;
contract EtherFallback {
    address payable owner = msg.sender;
    fallback() external payable {
        uint256 amountToWithdraw = msg.value;
        safeWithdraw(amountToWithdraw, address(this));
    }
    function safeWithdraw(uint256 amountToWithdraw, address payable to) internal nonReentrant {
        require(msg.sender == owner, "Contract is already the owner.");
        require(amountToWithdraw > 0, "AmountToWithdraw must be greater than zero.");
        require(to!= address(this), "Contract's address can't send Ether.");

    }
    event FailedEthers();
}
