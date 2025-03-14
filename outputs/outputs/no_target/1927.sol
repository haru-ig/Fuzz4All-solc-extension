pragma solidity ^0.8.0;
contract Mutator {
    uint constant X = 1;
    function x() pure public returns (uint) {
        return uint160(X + Mutator.x()) / X;
    }

    function mutate(uint _a) pure public{
        X += _a;
    }
}
uint a;
function a() pure public returns (uint256) {
    uint256 aa = uint256(a);
    uint x = Mutator.x();
    uint256 b;
    for (b = 0;aa > 2147483647; aa >>= 1,b++);
    return uint256(aa) * uint256(x) / uint256(b);
}
