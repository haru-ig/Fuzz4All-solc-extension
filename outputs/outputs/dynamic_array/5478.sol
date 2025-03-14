pragma solidity ^0.8.0;
contract Test42 {
    uint256 x[];
    constructor() payable {
    }
    function g() public view returns (uint256 y) {
        for (uint i = 0; i < 5; ++i) {
            for (uint j = 0; j < 5; ++j) {
                for (uint k = 0; k < 5; ++k) {
                    y += arr[i][j][k];
                }
            }
        }
    }
}
