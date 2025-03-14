pragma solidity ^0.8.0;
contract SolveMemory
{
    uint public a;
    function test()public pure returns(uint1) {
          uint len = 3;
          for(uint i=0; i<len; i++) {
            a += 1;
            uint add = 0;
            for(uint j=0; j<len; j++) {
              add = add + a;
            }
          }
        return add;
    }
}
