pragma solidity ^0.8.0;
contract L41L84 {
    uint x = 10;
    bytes32[] x = new bytes32[](10);
    uint[] f(bytes32[] memory x) public view returns (uint, uint, uint){

        uint x0Size = 0;
        for (uint k = 0; k < x.length; k++) {
            if (x[k].length < 2) {
                x0Size++;
            }
        }
        return x0Size;
    }
}
