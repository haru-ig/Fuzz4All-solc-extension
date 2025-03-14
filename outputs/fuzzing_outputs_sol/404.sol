pragma solidity ^0.8.0;

contract SafelyCaller {
    function safelyTransfer(address tokenAddress, address account, uint amount, bytes memory data) external {
        tokenAddress.transfer(amount, account);
        if (data.length > 0) {
            DataTransfer(address(this), account, tokenAddress, amount).transfer(data);
        }
    }
    receive () external payable {}
    event DataTransfer(
        address originalSender,
        address destination,
        address tokenholder,
        uint amount
    );
}
