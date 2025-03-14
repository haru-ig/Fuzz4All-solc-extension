pragma solidity ^0.8.0;
contract Lottery {
    uint public winnerIdx;
    uint public numWins;
    uint[] public bets;
    LotteryWithArrayIndex[] public lottery;
    constructor(LotteryWithArrayIndex[] memory _lottery) {
        lottery = _lottery;
    }
    function win(uint _winningArrayIndex) public {
        lottery[winnerIdx][_winningArrayIndex].X += 1;
        lottery[winnerIdx][_winningArrayIndex].Y = 0;
        lottery[winnerIdx][_winningArrayIndex].Z = 0;
        numWins += 1;
    }
}
