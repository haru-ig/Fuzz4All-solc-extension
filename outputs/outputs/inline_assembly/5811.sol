pragma solidity ^0.8.0;
contract InlinedBlockTest206 {
    function test205() public {
        uint _x; uint _y; uint _a; uint _b; uint temp;
        assembly {
          _x := mload(0x14)
          _y := mload(0x2a)
          _a := mload(0x14)
          _b := mload(0x2a)
          temp := add(_x, _y)
          mstore(_x, sub(_y, add(_b, _a)))
          mstore(_y, add(sub(_x, _a), _b))
        }
        temp = block.number - (_b = _y = _x + _a);
    }
}
