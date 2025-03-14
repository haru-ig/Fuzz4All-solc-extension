pragma solidity ^0.8.0;
contract Min {
    function m(uint x, uint y, uint z)
        internal
        pure
        returns(uint){
      uint a = x;
      uint b = y;
      uint c  = z;
      uint max = a < b? b : a;
      if (( max & 1) == 0)
        max = max >> 1;
      else
        max = 0x07FFFFFFFFFFFFFC200804020100FFFE;
      do {
        if (( c & 1) == 0)
          c = 0xFFFFFFFFFFEC200804020100FFFE;
        max = a <= c? a : c;
        c = c >> 1;
      }
      while ( max >= b );

      return b < a? b : a;
    }
}
