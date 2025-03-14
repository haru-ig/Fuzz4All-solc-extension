pragma solidity ^0.8.0;
contract ModifiableDynamicArrayType {
    uint256 [][][] private arrayArray;
    function Mutate() payable public {
        uint256 count = 0;
        for (uint i = 0; i < 10; i++) {
            for (uint j = 0; j < 3; j++) {
                for(uint k = 0; k< 3; k++) {
                uint256[2][2][3][][](count) = new uint256[2][2][2][][](i);
                }
            }
            count++;
        }
    }
}
