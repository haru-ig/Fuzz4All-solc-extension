pragma solidity ^0.8.0;
contract Mutated {
    uint internal _value = 1000000000000000000000000000000000000000000000000000000000000000000;
}

pragma solidity ^0.8.0;
contract Arrays {
 function a() public pure returns (uint[] memory) {
    uint[] memory a = new uint[](4);
    a[0] = 3;
    a[1] = 7;
    a[2] = 8;
    a[3] = 9;
    return a;
 }
 function b() public pure returns (uint[][] memory) {
    uint[][] memory b = new uint[2][4];
    b[0][0] = 3;
    b[0][1] = 7;
    b[0][2] = 8;
    b[0][3] = 9;
    b[1][0] = 4;
    b[1][1] = 2;
    b[1][2] = 10;
    b[1][3] = 3;
    return b;
 }
}
