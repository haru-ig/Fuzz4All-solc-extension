pragma solidity ^0.8.0;
contract Mutate {
    uint32[] b;

    function mutateArray(uint32[] memory b_) public pure {
        b[0] *= 2;
        b[1] *= 2;
        b = b_;
    }

    function revertArray() returns(uint32[] memory) {
        return b;
    }

    uint32[] test();
    function main() public {
        b = test();
        uint32[] memory c = revertArray();
        c[1] = 4;
    }
}
