pragma solidity ^0.8.0;
contract Fallback is Old {
    function old() public pure returns (uint) {
        return 1;
    }
}
