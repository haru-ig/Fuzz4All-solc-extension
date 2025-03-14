pragma solidity ^0.8.0;
contract Multiply{
  function f(uint a,uint b)
    internal
    pure
    returns (uint){
    uint ret=0;
    uint _i=a;
    while( (_i!= 0) ) {
      ret=_i;
      _i=(_i>>1);
    }
    ret=ret<<1;
    for(uint j=b; j>0;j--){
      if( (b & 1)!= 0){
        ret = (ret*2);
      }
      b = b>>1;
    }
    return ret;
}
}
