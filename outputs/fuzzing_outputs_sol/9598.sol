pragma solidity ^0.8.0;
contract Fallback {
    function test() public pure returns (uint256) {
        return 1;
    }
    function test2() public pure returns (uint256) {

        revert();
    }
    function test3() public payable returns (uint256) {

        payable(address(0x0));
        return 3;
    }
}
