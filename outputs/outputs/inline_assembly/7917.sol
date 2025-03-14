pragma solidity ^0.8.0;
contract B1{
    uint x;
    function sneaky() public{
      uint i = 0;
      while (i<5){
        uint y = 2;

        uint z = y;

        x = x - x;

        i = i + 1;
        i = i + 1;
        i = i + 1;

      }
    }
}
contract B2 {
    uint y;
    constructor() public
    {
        uint x = 2;
        uint z = 3;
        uint j = x/z;
        y = j;
    }
    function sneaky() public{
        for(uint i = 5; i> 0; i--) {
            x = x + 1;
        }
    }
}
contract B3 {
    uint x;
    uint i = 0;
    uint y;
    uint z;
    constructor () public
    {
        uint w = uint(keccak256(abi.encodePacked(2)));
        x = i + w + uint(keccak256(abi.encodePacked("I'm a byte array!"))));
    }
    function sneaky() public
    {
        uint e = 10;
        if(x+e> 10000){
            uint g = y + 3*e;
        }
        y = i;
        ++i;
        i = i - 1;
        ++i;

        z = x - x;
    }
}
contract B4b {
    uint x;
    uint a = 0;
    uint f(uint w){
        uint v = uint(keccak256(abi.encodePacked(w)));
        ++a;
        if(x!= 0){
            x++;
        }
        if(uint(keccak256(abi.encodePacked(a))) == 1)
            ++v;
        return uint(keccak256(abi.encodePacked(v))) + 6;
    }
    constructor () public
    {
        x = uint(keccak256(abi.encodePacked(2)));
    }
    function sneaky() public
    {
        x = f(0xdead20 + uint(keccak256(abi.encodePacked(10 + "Hello there "))));
    }
}
contract B4 {
    uint x;
    uint a = 0;
    uint f(uint w){
       uint v = uint(keccak256(abi.encodePacked(w)));
        ++a;
        if(x!= 0){
            x
