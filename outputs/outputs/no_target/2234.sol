pragma solidity ^0.8.0;
contract Mutation2_SEM2 {
    function f(uint8[] memory) public pure {}
}

pragma solidity ^0.8.0;
contract Mutation2_SEM1 {
    function f(uint8(2)[3] memory) public pure {}
}
