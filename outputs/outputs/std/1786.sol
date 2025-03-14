pragma solidity ^0.8.0;
contract Arrays {

    uint64[3] public numbers;

    function appendNumberToTheArray(uint64 numberToBeAppended) public {
        numbers.push(numberToBeAppended);
    }
}
