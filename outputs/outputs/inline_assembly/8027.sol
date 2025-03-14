pragma solidity ^0.8.0;
contract MultipleReturn {
    bytes32 public x;
    function multipleReturn() public returns (uint) {
        uint y = 3;
        x += "01";
        return y + 1;
    }
}
