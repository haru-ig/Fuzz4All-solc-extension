pragma solidity ^0.8.0;
contract MixedContractsExample {

    struct MixedContracts {
        uint256 x;
        uint y;
        uint32 _0;
        bytes x1;
        bytes2 _1;
        bytes4 _2;
    }
    function doMath(MixedContracts memory x) public pure {
        x.x=x.x+8;
        x.y=x.x+8;

    }
    function main(uint64 witness) public pure {
        MixedContracts storage x=MixedContracts(0x10);
        x.x=x.x+witness;
        x.y=x.x+witness;
    }
}
