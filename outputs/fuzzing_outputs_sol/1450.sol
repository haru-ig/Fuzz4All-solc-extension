pragma solidity ^0.8.0;
address payable smartContract;
contract MutatedExample {
    function mutatedExample(address payable _addr) public {
        require(address(smartContract) == _addr || address(smartContract).balance == 0, "MutatedExample::notMyself");
        smartContract = _addr;
    }
}
