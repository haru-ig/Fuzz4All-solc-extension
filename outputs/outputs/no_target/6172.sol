pragma solidity ^0.8.0;
contract MutatedContract {
    uint public mutatedResult = 6;
}

pragma solidity ^0.8.0;
contract MutatedContract {
    uint public mutatedResult = mutatedResult + 1;
}
