pragma solidity ^0.8.0;
contract semanticEquivalentMutation10 {
    struct ArrayA {
        uint8 x;
        uint256 y;
        uint[] z;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A) public pure returns (uint) {
    uint x = 2;
    A.x = 1;
    A.z.push(0xff);
    A.y = 2;
    return 2;
    }
}
