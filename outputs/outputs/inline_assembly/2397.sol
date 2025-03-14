pragma solidity ^0.8.0;
contract MutatorOld2
{
    address payable C = payable(0xf0F0f0F0F0F0F0F0f0F0F0f0f0F0F0F0F0F0f0);
    uint constant add = 64;
    constructor() public {
    }
    function increase(uint _x) public {
        uint x = _x.add(add);
        uint z = uint(uint(x).add(64));

      C.transferFrom(_x);
      C.transfer(x);
      C.transfer(z);
    }
    uint constant subtract2 = 64;
    function decrease(uint _x) public {
        uint x = uint(_x.sub(subtract2));
        uint z = uint(uint(x).sub(64));
      C.transfer(x);
      C.transfer(_x);
      C.transfer(z);
      C.transfer(add);
    }
}

pragma solidity ^0.8.0;
contract MutatorOld3
{
    constructor() public {
    }
    uint constant add = 64;
    uint constant subtract2 = 64;
    function decrease(uint _x) public {


     uint x = uint(uint(uint(_x).sub(subtract2))).sub(64)

     uint y = uint(_x.sub(x));
     uint z = uint(uint(_x).sub(add));
     C.transfer(uint(uint(uint(_x).sub(y)).sub(z)).sub(_x));

    }
    uint constant add2 = 833;
    function increase(uint _x) public {
      uint x = _x.add(add2);
      uint z = uint(uint(x).add(833));
    C.transfer(x);
    C.transfer(_x);
    C.transfer(z);
