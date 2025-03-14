pragma solidity ^0.8.0;
contract Simple {
    StructWithNestedArrays data;
    constructor (StructWithNestedArrays memory _data) {
        data = _data;
    }
    function func() public {
        for (uint256 i = 0; i < 3; i++) {
            uint256 x = data.array0[i];
            uint256 y = data.nestedArrays[data.array0[i]][data.array0[i]];
            data.array0[i] = 4;
        }
        for (uint256 i = 0; i < 2; i++) {
            uint256[2][2] memory array0 = data.nestedArrays;
            for (uint256 j = 0; j < 3; j++) {
                data.nestedArrays[data.array0[i]][data.array0[i]] = 4;
            }
        }
    }
}
