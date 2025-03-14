pragma solidity ^0.8.0;
contract Not_a_Mutable_Mutation2 {
    function mutation()
    public
    view
    returns (uint[][] memory)
    {
        uint[][] memory result;
        for (uint i = 0; result.length < 5; i++) {
          result[i] = muti;
        }
        return result;
    }
}
