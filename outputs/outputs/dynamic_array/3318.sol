pragma solidity ^0.8.0;
bytes4 constant internal X = bytes4(keccak256('use(uint256,_bytes4)'));
constructor() {
    I1(address(this)).use(0, X);
}
