pragma solidity ^0.8.0;
contract Test44{
    struct S {uint key; uint val; uint256 x; uint256 y; uint256 z; uint256 w;}
    mapping (uint => S) public smap;
    function modifyTest() public {
        smap[1000].x = 2000;
        if ( smap[1000].x == 2000) {
            smap[1000].y = 4000;
        }
        smap[1000].key = 0;
        smap[ 2000].x = 0;
        smap[1000].z = 5;
        smap[1000].val = 0;
        smap[ 2000].y = 0;
        smap[ 2000].w = 0;
    }
}
