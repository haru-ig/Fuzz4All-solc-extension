pragma solidity ^0.8.0;
contract Mutation2_SEM9_SEM20_SEM24_SEM27 {
    function f(uint256[2] memory x) public pure returns(uint256, uint256) {
        return (uint256(x), uint256(x));
    }
}
