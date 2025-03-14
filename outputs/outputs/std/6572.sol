pragma solidity ^0.8.0;
contract Mutate16 {
    uint32 constant x;


    uint32 x = 0;
}

pragma solidity ^0.8.0;
struct Mutate17 {
  uint256 constant x;
  uint256 private _value;
}




pragma solidity ^0.8.0;
function set(Mutate17 memory self, uint32 z) public {self._value = z; }
function update(Mutate17 memory self) public view returns (uint8 y) {y = uint8(self._value); }
function test() public returns (uint256 x, uint256 y) {x = set(Mutate17(0), 10); y = update(Mutate17(self)); }
function test2() public returns (uint256 z) {z = uint256(set(Mutate17(0), 20); });
