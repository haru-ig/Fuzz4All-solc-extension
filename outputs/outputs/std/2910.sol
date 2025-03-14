pragma solidity ^0.8.0;
contract ArrayMutations3 {
    uint256 public a;
    bytes public b;

    function setArray(uint256[] memory _a, bytes memory _b) public {
        a = _a.length;
        b = _b;
    }
}
