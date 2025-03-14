pragma solidity ^0.8.0;
contract Convert {
  function b0(uint i)
    internal
    pure
    returns (uint8 out){
    uint96 temp = uint96(uint256(i));
    out = uint8((temp.abs() < type(uint256).max)? temp : 0);
    return out;
}
}
