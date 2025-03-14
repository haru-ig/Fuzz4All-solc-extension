pragma solidity ^0.8.0;
contract BugsIntroducedInDynamicArrays{
    bytes32 hash;
    function a(bytes32 _hash) external  {
        hash = _hash;
    }
    function f() external{
        uint a[1];
        a[0] = 10;
        uint b[2];
        b[0] = 1;
        b[1] = 2;
        uint c[0];
        uint256[] memory s;
        c[0] = 8;
    }
}
