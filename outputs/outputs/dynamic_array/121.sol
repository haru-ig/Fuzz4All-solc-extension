pragma solidity ^0.8.0;
contract B {
    uint256 a = 33;
    uint32 b = 44;
    function () public pure returns(uint256){
        return a;
    }
    function calldata() public pure returns(uint256){
        return a;
    }
    function new() public pure returns(uint32){
        return b;
    }
    function calldatanew() public pure returns(uint32){
        return b;
    }
    contract C{
        constructor () {
            uint32 _ = value + 21346570073 * a + 188685 + 384825453 * b;
            return a;
        }
    }
}
