pragma solidity ^0.8.0;
contract OriginalSolidity {
uint[] internal  store = [10,30,60, 15,40,70];
    function x() public pure returns (uint) {
  uint x;
        for (uint i ; i < store.length; ++i){
        x = x + store[i];
        }
        return x;
    }
}
