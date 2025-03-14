pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract Mutated2 {
    function mutate(MutInterface[] memory c)
        public
        payable
        returns (uint[6] memory v)
    {
        MutInterface[6] memory p;
        p[0] = c[0];
        p[1] = c[1];
        p[2] = c[2];
        p[3] = c[3];
        p[4] = c[4];
        p[5] = c[5];

        for (uint i = 0; i < 6; i++){
            v[i] = keccak256(abi.encodePacked(p[i]));
        }
        event Mutated(uint[6] a, uint[6] b, uint startTime, uint endTime);
    }
}
