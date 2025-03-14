pragma solidity ^0.8.0;
contract SemanticMutation5
{
    uint16 private constant value = 7;
    uint x;
    mapping(uint16 => bool) public hasMutated;
    function a(uint i) public {
            hasMutated[i] = true;
        if (i > value) {
            x = value;
        }
        else if (i > x) {
            x = i;
        }
    }
    function b(uint i) public {
            hasMutated[i] = true;
      }
}
