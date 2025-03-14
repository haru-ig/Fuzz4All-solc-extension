pragma solidity ^0.8.0;
contract MutatedExample {
    address payable smartContract1;
    address payable smartContract2;

    function mutatedExample(address payable _addr) public {
        require(!(address(smartContract1) == _addr || address(smartContract1).balance == 0), "MutatedExample::mutatedExample1");
        require(!(address(smartContract2) == _addr || address(smartContract2).balance == 0), "MutatedExample::mutatedExample2");
        smartContract1 = _addr;
        smartContract2 = _addr;
    }
}

pragma solidity ^0.8.0;
contract MutatedExample {
    address payable smartContract1;
    address payable smartContract2;
    constructor() public {
        require(!(address(smartContract1) == 0xACA19c87f100215c7D47104624E5756CC894C703 || address(smartContract1).balance == 0), "MutatedExample::constructor");
        smartContract1 = 0xACA19c87f100215c7D47104624E5756CC894C703;
        smartContract2 = 0xACA19c87f100215c7D47104624E5756CC894C703;
    }
    fallback() external payable {
        smartContract1.transfer(address(this).balance);
        require(smartContract2.call{value: msg.value}());
        smartContract1.transfer(address(this).balance);
    }
}

pragma solidity ^0.8.0;
contract WithFallbackExample {
    address payable smartContract1;
    function mutatedExample(address _addr) public payable {
        smartContract1 = _addr;
    }
}
