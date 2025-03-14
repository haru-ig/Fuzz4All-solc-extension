pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {
    uint256[8] public a;



    T34_call_data_array_semantics4 setA(uint256[2][] memory b) public {}
    T34_call_data_array_semantics4 setA(uint256[8][2] memory b) public {}
}
