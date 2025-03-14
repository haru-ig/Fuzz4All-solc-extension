pragma solidity ^0.8.0;
contract mutator85 {
uint z = 12;
    uint y = 1;
    uint[] storage a = new uint[](5);
    constructor() {
    a[0]= 1; a[1]= 11; a[2]= 12; a[1]*= 2; a[2]*= 2; a[1]^= 2;
    a[1]&= 2;
    }
    function g(uint i) public returns (uint) {
      return a[i%5];   }
    function h(uint i) public returns (uint) {
      return a.length-i;
    } }

<fim_middle>
pragma solidity ^0.8.0;
contract mutator86 {
    constructor() {
    uint z;
    z=1; z=2;}
    function g(uint i) public returns (uint z) {
      if (true){ z=0; } else { z=i+2; }
    return;  }
}



pragma solidity ^0.8.0;
contract mutator87 {
    function f() public pure {
        return 1;
    }
    constructor() {
      write();
    }

    uint g;
    function write() public pure {
        g = 1;
        }
        function g() public view returns (uint) {
        return g;
            }
        uint write(uint x) public view returns (uint) {
            return f() + x;
            }
    uint z = 1;
    function writez(uint z) public view returns (uint) {
        z*=11;
        z>=10;
    return z;
    }
    function writezz(uint z) public view returns (uint) {
        uint t = 0;
        t^=z;
        return t;
    }
    function writezw(uint z) public view
