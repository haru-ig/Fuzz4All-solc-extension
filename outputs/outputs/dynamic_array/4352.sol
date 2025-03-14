pragma solidity ^0.8.0;
library TestLib {
    event E1 (bool);
    mapping (uint8 => uint256) internal map0;
    event E2 (uint8, bool);
    mapping (bytes32 => uint8) internal map1;
}
