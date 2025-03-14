pragma solidity ^0.8.0;
contract Example9 {

    uint256 public uint256_fallback;

    function Example9() {
        uint256_fallback = 1;
    }


    receive() external {
        uint256_fallback += 1;
    }
}
