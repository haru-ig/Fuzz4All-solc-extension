pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T36_calldata_return_semantics {
    function calldata_return(uint8 _val) public pure returns (uint8) {
        uint8 output = 0;
        output |= _val;
        return output;
    }
}
