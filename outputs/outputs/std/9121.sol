pragma solidity ^0.8.0;
contract SemanticExampleContract {
    uint256 array1[44];
    uint256 array2[44];
    uint256 array3[44];

    contract SemanticExampleArrayContract {
        uint256 array1[44];
        uint256 array2[44];
        uint256 array3[44];
        uint256 value = 42;
    }
}
