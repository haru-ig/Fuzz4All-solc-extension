pragma solidity ^0.8.0;
contract MutatedExample {
    address payable smartContract1;
    function mutatedExample(address payable _addr) public {
        require(!(address(smartContract1) == _addr || address(smartContract1).balance == 0), "MutatedExample::notMyself");
        smartContract1 = _addr;
    }
}
