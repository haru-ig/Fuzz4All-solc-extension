pragma solidity ^0.8.0;
contract Mutated {
    struct Data {
        Data() internal;
        bytes32 data;
        uint size;
    }
    function fTest(Data memory d) internal pure {
        d = d;
        d.data *= 4;
        d.size /= 2;
    }
}
