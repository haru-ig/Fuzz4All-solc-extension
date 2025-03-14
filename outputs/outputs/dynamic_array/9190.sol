pragma solidity ^0.8.0;
contract Semantically_Equivelent {
    function mutation()
    public
    view
    returns (uint[] memory)
    {
        uint[] memory result;
        for (uint i = 7; result.length < 14; i++) {
          result[i] = 0;
        }
        return result;
    }
}
