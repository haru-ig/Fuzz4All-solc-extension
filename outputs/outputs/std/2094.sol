pragma solidity ^0.8.0;
contract Mutated_2_3_1 {
   function mul(uint x, uint y) public pure returns (uint) {
        uint x1=uint(x);
        uint y1=uint(y);
        uint a;
        assembly {
            a := mload(x1) times mload(y1)
        }
        return(a);
    }
}

pragma solidity ^0.8.0;
contract Mutated_2_3_2 {
   function mul(uint x, uint y) public pure returns (uint) {
        uint a;
        a = uint(uint(uint(x)*(uint(x)))/(uint(y)*(uint(y))));
        return (a);
    }
}

pragma solidity ^0.8.0;
contract Mutated_2_3_3  {
   uint[] public array;

   function mul(uint x, uint y) public pure returns (uint) {
        uint a;
        require((x | y)==0);
        if ( y == 0 ) {
            for (uint i=0; i< x; i++) {
                a = a * uint(i+1);
            }
            return(a);
        }
        require ( x > 1 );
        a = uint(uint(x)*(uint(x)))/(uint(y)*(uint(y)));
        uint b=uint(uint(uint(x)*(uint(x)))/(uint(y)*(uint(y))))-uint(uint(uint(x)*(uint(x)))/(uint(y)*(uint(y)))));
        uint c=uint(uint(uint(x)*(uint(x)))/(uint(y)*(uint(y))))-uint(uint(uint(x)*(uint(x)))/(uint(y)*(uint(y))));
        require((b<4&&c>4));
        for (uint i=0; i<x; i++) {
            a = a+a;
        }
        return(a);
   }
}

pragma solidity ^0.8.0;
contract Mutated_2_3_4 {
   uint[] public array;

   function mul(uint x, uint y) public pure returns (uint) {
        uint a;
        require((x | y)==0);
        uint c;
        uint b;
        uint z;

        if ( x & (x - 1) == 0 ) {
            b=y;
            z=0;
        } else {
            c=y;
            b=(x-1)/2;
            uint s=(x-1)/2;
            z=uint(uint(s)*(s))/(uint(b)*(uint(b)))&(~0);
        }
        uint a1;
        uint c1;
        uint b1;
        uint aTemp;
