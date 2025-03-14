pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller {
    uint internal x = 10;
    fallback() external payable {
        x = 12;
    }
}

contract SimpleFallbackContractModified {
    uint internal x = 10;
    receive() virtual external payable {
        x = 12;
    }
}

contract MutatedSimpleFallbackContract {
    uint internal x = 10;
    fallback() virtual external payable {
        x = 12;
    }
}
