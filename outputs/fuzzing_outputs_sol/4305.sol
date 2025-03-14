pragma solidity ^0.8.0;
contract MutatedSimpleCaller {
    uint internal x = 10;
    receive() external payable {
        x += 1;
    }
    fallback() external payable {
        x += 1;
    }
}

pragma solidity ^0.8.0;
contract MutatedContractCaller {
    uint constant mutX = 10;
    uint internal x = mutX;
    fallback() external payable {
        if (msg.value == 1 ether) {
            x += 1;
        } else {
            x += 1;
        }
    }
}
