pragma solidity ^0.8.0;
contract A {
    uint d;
    function g() public returns (uint256) {
        return uint256(address(this).balance);
    }
}
