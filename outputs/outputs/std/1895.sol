pragma solidity ^0.8.0;
contract ArraysMutated {
    mapping(uint => uint) public counterMap;
    mapping(uint => uint) public newCounterMap;
    function increment() public {
        require(counterMap[counter] == 3, "the old counter cannot be incremented");
        counterMap[counter] += 2;
        newCounterMap[newCounter] = 3;
    }
    function incrementWithReturn() public returns (uint) {
        require(counterMap[counter] == 3, "the original counter cannot be incremented");
        counterMap[counter] += 2;
        newCounterMap[newCounter] = 3 + newCounterMap[newCounter];
    }
    function incrementWithReturnValue() public returns (uint) {
        uint oldCounter = counterMap[counter];
        require(oldCounter == 3, "the old counter cannot be incremented");
        counterMap[counter] += 2;
        newCounterMap[newCounter] = 3 + newCounterMap[newCounter];
        return oldCounter;
    }
}
