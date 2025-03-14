pragma solidity ^0.8.0;
contract B {
    function fallback() public pure returns(uint) {
        (uint256 x, ) = callData.data;
        return x;
    }
}
