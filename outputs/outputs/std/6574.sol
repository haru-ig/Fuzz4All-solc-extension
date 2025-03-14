pragma solidity ^0.8.0;
struct Mutate17 {
  uint32 x;
}
contract Mutate18 {
    uint32 x;
}
contract Mutate19 {
    uint32 x;
    function xChange(uint32 _x) public view {
        x = _x + x;
    }
}

pragma solidity ^0.8.0;
struct Mutate20 {
  uint32 x;
}
contract Mutate21 {
    uint32 x;
    function xChange(uint32 _x) public {
        x = _x + x;
    }
}
contract Mutate22 {
    uint x;
    function xChange(uint _x) public {
       require(x + _x > 42, "Fail");
     x = x + _x + 2;
    }
}

pragma solidity ^0.8.0;
struct Mutate23 {
  uint32 x;
}
contract Mutate24 {
    function xIs(uint32 _expected = 42) public pure {
        require(x == _expected, "Fail");
    }
    uint32 x;
}
