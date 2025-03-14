pragma solidity ^0.8.0;
contract Test833C{
    bool b;
    bool[] memory w;
    bool b0 = b;
    bool w0 = b;
    constructor () public {
    	bool[] memory z = new bool[](3);
    	bool[] memory x;
    	bool z0 = z[0];
    	w = z;
    	b = z0;
    }
}



contract Test834C{
   address a;
    uint8[] memory w;
    address a0 = a;
    uint8 w0 = w[0];
    constructor () public {
        address[] memory z = new address[](4);
        address[] memory x;
        address z0 = z[0];
        w = z;
        a = z0;
    }
}



 contract Test835C{
    uint256 a;
    uint256[] memory x;
    uint256 a0 = a;
    uint256 x0 = x[0];
    constructor () public {
        address[] memory z = new address[](7);
        address[] memory y;
        address z0 = z[0];
        x = z;
        a = z0;
    }
}



contract Test836C {
   struct StructA {address v0; uint8 v1; uint8 v2; uint8 v3; uint8 v4; uint8 v5; uint8 v6; uint8 v7; uint256 v8; uint8 v9; uint8 v10;
