pragma solidity ^0.8.0;
contract Mutate8 {
    bool public isMutated = false;
    uint public initialbalance = 0;
    modifier onlyIfNotMutated(){
    uint isMutated = false;
    assembly {
    isMutated := and(isMutated, not(storage))
    }
    if(!isMutated) revert("");
    _
    isMutated = false;
    _
    }
    constructor() {
    initialbalance += 42;
    initialbalance = 0;
    initialbalance += 1000;
    initialbalance -= 108;
    initialbalance -= 741;
    initialbalance += 372;
    isMutated = true;
    }
    function MutateStorage() public onlyIfNotMutated(){
    isMutated = false;
    storage["a"] = 4235;
    storage["x"] = 42;
    storage["s"] = 32263;
    }
    function MutateMemory() public onlyIfNotMutated(){
    assembly {
    let ptr := mload(0x40)
    ptr
    }
    memory ["a"] = 4235;
    memory ["x"] = 42;
    memory ["s"] = 32263;
    }

    function MutateOutputString() public onlyIfNotMutated(){
    outputString["a"] = "54";
    outputString["x"] = 4223;
    outputString["s"] = "x+42+3";
    }

}

pragma solidity ^0.8.0;
contract Mutate9 {
    bool public isMutated = false;
    uint private arrayLength = 0;
    bytes16 private firstElementOfFirstElement = 0x0;
    bytes16 private secondElementOfFirstElement = 0x0;
    bytes16 private thirdElementOfFirstElement = 0x0;
    bytes16 public secondElementOfThirdElement = 0x0;
    bytes public array;
    uint public initialBalance = 0;
    modifier onlyIfNotMutated(){
    uint isMutated = 0;
    isMutated += and(isMutated, not(storage))
    isMutated += and(isMutated, not(memory))
    isMutated += and(isMutated, not(outputString))
    isMutated += and(isMutated, not(arrayLength))
    isMutated += and(isMutated, not(array))
    isMutated += and(isMutated, not(firstElementOfFirstElement))
    isMutated += and(isMutated, not(secondElementOfFirstElement))
    isMutated += and(isMutated, not(thirdElementOfFirstElement))
    isMutated += and(isMutated, not(secondElementOfThirdElement))
    isMutated += and(is
