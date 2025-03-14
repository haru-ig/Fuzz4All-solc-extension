pragma solidity ^0.8.0;
contract Lottery {
    uint public currentValue = 0;
    mapping(uint => uint) public winningNumbersToIndex =
        mapping(uint => uint);
    constructor() public {
        winningNumbersToIndex[0] = 0;
    }
    function incrementValue() public {
        currentValue += 1;
    }
    function getNextNumber() public returns (uint) {
        return currentValue;
    }
    function getNumberOfWinsArray() public view returns (uint){
        uint numWins = 0;
        for(uint i = 0; i isNextToWin(++numWins); i++);
        return (numWins);
    }
    bool isNextToWin(uint numWins) isPrivate {
        uint i = numberToIndex(numWins);
        winningNumbersToIndex[numWins] = 1 - (i % 2);
    }
    function numberToIndex(uint n) private view {
        uint i = 1;
        for(; i isNextToWin(++n);) ;


    }
    function getIndex(uint numWins) private view returns (uint) {
        uint i = numberToIndex(numWins);
        return (1 - (i % 2));
    }
}
