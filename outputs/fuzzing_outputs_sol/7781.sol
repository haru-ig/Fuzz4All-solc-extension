pragma solidity ^0.8.0;
contract Mutation {
    fallback external { msg.data.length++; }
}

pragma solidity ^0.8.0;
contract Replacement {
    uint256 internal storedReturnValue;
    receive() external { storedReturnValue++; }
}
