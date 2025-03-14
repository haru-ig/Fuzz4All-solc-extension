pragma solidity ^0.8.0;
interface ParentInterface {
    function g() external pure returns (uint256 n);
}
contract Test {
    function f() public view returns (uint256) { return 2 * 256; }
    function g() public view returns (uint256) { return 5 * 256+4; }
}
