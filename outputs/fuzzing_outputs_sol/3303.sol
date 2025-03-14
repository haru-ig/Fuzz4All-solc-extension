pragma solidity ^0.8.0;
contract SomeFallbackContract {
    mapping(bytes32 => bool) internal successCodes;
    function SomeFallbackContract() {}
    fallback() external payable {}
    receive() external payable {}
}


/* Please create a
