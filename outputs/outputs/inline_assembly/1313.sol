pragma solidity ^0.8.0;
contract Mutant5
{
    constructor() public {
      uint b=42;
      uint h=16;
      bool m=false;
      (h, b, m) = (0, 0, false);
      assert(!m);
    }
    receive() external payable {}
  }

pragma solidity ^0.8.0;
contract Mutant6
{
  constructor() public {
    (uint,uint) memory local = (1, 2);
    uint x = local[0];
    uint y = local[1];
  }
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract Mutant7
{
  constructor() public {
    (uint, uint) memory m = (1, 2);
    uint a = m[0];
    uint b = m[1];
  }
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract Mutant8
{
  function mutant1(uint32 _number, (uint32, uint32) memory _m) public pure returns(uint){
    uint a = _m[0];
    uint b = _m[1];
    (_number, (a, _m[2])) = (_m[1], (a,_m[2]));
    return a;
    }

  function mutant2((uint32 x, uint32 y) memory _m) public pure returns(uint){
    (uint x, uint y) = _m;
    (x, (y, _m[2])) = _m;
    return x;
  }

  function mutant3(uint32 _number, (uint32, uint32) memory _m) public pure returns(uint) {
    uint x = (_m[0], _m[1]);
    return _number._;
  }
  function mutant4(uint32 _number, (uint32, uint32) memory _m) public pure {
    uint x = (_m[0], _m[1]);
    _m = (x, _m[2]);
    (x, (y, _m[2])) = _m;
  }
  function mutant5(uint32 _number, uint32 a, uint32 b) public pure{
    (uint32 x, uint32 y) = _number._;
    (x, (y, _m[2])) = _m;
  }
  function mutant6(uint32 _number, uint32
