pragma solidity ^0.8.0;
contract MultiMutationsExample {
    address payable smartContract1;
    address payable smartContract2;
    address payable smartContract3;
    address payable smartContract4;
    address payable smartContract5;
    address payable smartContract6;

    function mutatedExample(address payable _addr) public {
        require(!(address(smartContract1) == _addr || address(smartContract1).balance == 0), "MutatedExample::notMyself");
        require(!(address(smartContract2) == _addr || address(smartContract2).balance == 0), "MutatedExample::notMyself");
        require(!(address(smartContract3) == _addr || address(smartContract3).balance == 0), "MutatedExample::notMyself");
        require(!(address(smartContract4) == _addr || address(smartContract4).balance == 0), "MutatedExample::notMyself");
        require(!(address(smartContract5) == _addr || address(smartContract5).balance == 0), "MutatedExample::notMyself");
        require(!(address(smartContract6) == _addr || address(smartContract6).balance == 0), "MutatedExample::notMyself");
        return (smartContract1);
    }
}
