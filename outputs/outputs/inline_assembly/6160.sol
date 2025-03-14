pragma solidity ^0.8.0;
contract SemanticallyEquivalentExample2 {
    struct SemanticallyEquivalent2 {
        uint witness;
        uint x;
    }
    modifier witness(uint256 _0) {
        SemanticallyEquivalent2 memory x;
        x.witness = _0;
        _;
    }
    function main(SemanticallyEquivalent2 memory _0) public {
        emit witness(_0.x);
    }
}
