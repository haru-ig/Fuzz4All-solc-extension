pragma solidity ^0.8.0;
contract Deeper {
    uint256 initial;
    function deepMethod() public pure {
        initial = uint256(keccak256(abi.encodePacked(initial))) + 1;
    }
}
