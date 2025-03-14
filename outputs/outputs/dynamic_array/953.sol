pragma solidity ^0.8.0;
contract LotteryWithSubtransactions {
    function getLottery() public {
    }
    function setLottery() public {
        sendTransactionWithoutGasPayable();
        sendTransactionWithoutGasPayable();
        sendTransactionWithoutGasPayable();
    }
    function sendTransactionWithoutGasPayable() private {

    }
}
