pragma solidity ^0.8.0;
contract L71MultipleReturn6 {
    bool x;
    uint y;
    uint z;
    uint returnTrue() public returns (uint z, uint y, bool x) {
       uint[] memory args = new uint[](4);
       uint i;
       args[0] = y;
       args[1] = x;
       args[2] = z;
       args[3] = 1;

       for (i = 0; i <= 3; i++) z = args[i];

       x =!y;
       y = y & args[0];
       return (z, y, x);
    }
}
