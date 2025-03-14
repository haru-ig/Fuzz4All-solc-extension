pragma solidity ^0.8.0;
<fim_middle>contract Mutate3 {
    uint32[4] a;
    function mutateArray(uint32[] memory a) public pure {
        a[4] *= 2;
    }
}

pragma solidity ^0.8.0;
contract Mutate4 {
    uint32[8] a;
    function mutateArray(uint32[] memory a) public pure {
        a[0] *= 2;
        uint32 m = a[0];
        a[0] *= 2;
        a[4]++;
    }
}
