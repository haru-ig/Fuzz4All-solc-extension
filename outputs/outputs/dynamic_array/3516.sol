pragma solidity ^0.8.0;
contract C {
    uint256[51][62] b1;
    constructor() public {
        uint256[] memory arr = new uint256[](51);
        for (uint256 i = 0; i < 51; i++) {
            arr[i][1] = 3;
        }
        for (int i = 0; i < 51; i++) {
            arr[i][2] = 4;
        }
        b1 = arr[51];
    }
    function mul() public payable {
        b1[51][1] = 1;
    }
}
