pragma solidity ^0.8.0;
contract ConstAccessBlock20 {
    function test() public returns (uint) {
        uint _var = (bool 0)[128][1] / (uint) 2**127;
        return _var;
    }
}
