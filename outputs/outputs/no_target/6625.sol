pragma solidity ^0.8.0;
contract SimpleStore9 {
    uint public data;
    constructor(uint d) {
        data = d;
    }
    function f() public view returns (bytes memory) {
        return bytes(uint256(data));
    }
}
