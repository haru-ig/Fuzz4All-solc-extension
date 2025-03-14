pragma solidity ^0.8.0;
contract LuckyDraw {
    uint128 private totalPlayers;
    uint256 private chanceOfWin;
    uint256 private luckyNumbersCount;
    uint256[] internal luckyNumbers;
    uint163 private result;

    address payable private payableAddress;
    uint[1] private randomNumbers;
    uint256 private totalAmount;
    uint256 private totalWinAmount;

    function initialize(address payableAddr, uint256 numberOfPlayers, uint256 luckyNumbersAmount, uint256 winningAmount) external {
        require(winningAmount < 5000, "Number of winners greater than 5000");
        payableAddress = payableAddr;
        totalPlayers = numberOfPlayers;
        chanceOfWin = luckyNumbersAmount;
        luckyNumbersCount = luckyNumbersAmount / 2;
        if ((luckyNumbersAmount % 2) == 0) {
            luckyNumbersCount = luckyNumbersCount + 1;
        }
    }

    function play() public returns (uint256) {
        for(uint256 i = 0; i < luckyNumbersCount; i++) {
            randomNumbers[i] = keccak256(abi.encodePacked(now, randomNumbers[i]));
        }
        if(randomNumbers[9] == 0 &&
            randomNumbers[0] == 0 &&
            randomNumbers[1] >= 1929
        ) {
            totalAmount = 0;
            totalWinAmount = 0;
        }
        for(uint256 i = luckyNumbersCount; i < (luckyNumbersCount + luckyNumbersAmount); i++) {
            totalAmount += 1;
        }
        if(luckyNumbersCount == 2) {
            for(uint256 i = 0; i < luckyNumbersCount; i++) {
                if(randomNumbers[i]%2 == 1 ) {
                    luckyNumbers[i] =  random
