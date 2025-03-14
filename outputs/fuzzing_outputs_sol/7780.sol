pragma solidity ^0.8.0;
contract MutationSemanticsFallback {
    uint256 internal value;
    fallback() external { value += msg.data.length; }
}

pragma solidity ^0.8.0;
contract NewSemanticsCaller {
    fallback() external payable {   }
}
