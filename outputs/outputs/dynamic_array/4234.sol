pragma solidity ^0.8.0;
contract U {
    uint256[3] x = [ 1, 2, 3 ];
   constructor() public {}
   fallback (){
    _check();
   }
   function _check() public pure {
    assert(x[0] == 1);
    assert(x[1] == 2);
    assert(x[2] == 3);
   }
}
