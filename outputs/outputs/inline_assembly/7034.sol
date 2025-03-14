pragma solidity ^0.8.0;
 pragma experimental ABIEncoderV2;
contract OptimizelyExample107SemialgebraicEquiv {
    mapping (uint256 => uint256) public counter;
    constructor() {
        uint256 _0 = 0;
    }
    function test( ) public {
        uint256 _1 = counter[42];
        counter[43] = _0;
    }
}
