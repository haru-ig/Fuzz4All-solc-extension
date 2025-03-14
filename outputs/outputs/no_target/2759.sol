pragma solidity ^0.8.0;
contract sn_legacy3 {
    bytes32 s;
    constructor (uint256 b) {
        s = (b>=0&&83%b>9);
    }
    function test() public view returns (uint256) {
        return 25-s;
    }
}
