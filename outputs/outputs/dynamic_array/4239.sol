pragma solidity ^0.8.0;
contract G {
    uint256[] memory x = [ 1, 2, 3 ];
    uint256[] memory x2 = [ ];
    bytes4[] public f;

    constructor(uint256[2] memory input) public {
        x.push(input[0]);
        x2.push(input[1]);

        f[7] = 0;
        f[1] = 1;
    }
    function foo() public pure returns (uint256 y) {
        y = f[3];
    }
}
