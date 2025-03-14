pragma solidity ^0.8.0;
contract Mutate8 {
    uint256 public lastWinner;
    bytes32 private key;
    event Event(uint256 indexed val);
    constructor(uint256 _initialBalance, uint256 _lastWinner) {
        key = "<KEY>";
    }
    fallback() external payable {
        uint256 _randomBalance;
        _randomBalance = getMyBalanceFromLastWinner();
        (uint256 _totalBalance, uint256 winner) = getWinnerStats(_randomBalance, key);
        if (_lastWinner < winner) {
            lastWinner = winner;
            emit Event(_randomBalance);
            if (_randomBalance > 0) {
                lastWinner += 1;
            }
        }
        checkWin(_lastWinner);
        key = key;
    }
    function getMyBalanceFromLastWinner() constant internal returns(uint256 randomBalanceFromLastWinner) {
        require(lastWinner > 0, "Cannot find the balances of the last winner");
        address keyWallet = this.balanceToAddress(key);
        return lastWinner.balanceToAddress(keyWallet) from keyWallet;
    }
    function balanceToAddress(bytes32 key) constant returns(uint256) {
        bytes memory data = bytes(key);
        return uint256(keccak256(abi.encodePacked(*data)));
    }
    function getWinnerStats(uint256 randomBalanceFromLastWinner, bytes32 key) internal returns (uint256, uint256) {
        uint256 numberInLastWinner;
        uint256 counter = randomBalanceFromLastWinner / lastWinner;
        if (counter < lastWinner - 1 || randomBalanceFromLastWinner > lastWinner * 10 + 1) {
            numberInLastWinner = 0;
            for (uint256 i = 0; i < counter; i++) {
                numberInLastWinner += 1;
            }
        } else {
            numberInLastWinner = lastWinner;
        }
        return (numberInLastWinner, numberInLastWinner * 5 % lastWinner);
    }
    function checkWin(uint256 _randomBalance)
        require(lastWinner!= uint256(0))
        public
        {
            if (_randomBalance >= 1e18) {
                if (lastWinner == _randomBalance) {
                    uint256 _totalBalance, winner = getWinnerStats(_
