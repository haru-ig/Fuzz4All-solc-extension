pragma solidity ^0.8.0;
contract C {
    uint public constant b = 2;
    uint constant public constantMax = 2**128;
    uint public constant constantMax = 2**128 - 1;
    uint public constant constantMin = 2**127 - 1;
}

pragma solidity ^0.8.0;
contract C {
    fallback() external;
}
