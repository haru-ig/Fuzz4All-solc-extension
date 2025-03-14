pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample6 {
    function main() public pure {
        uint256[] memory values;
        uint256 x;
        uint256 y;
        uint256 z;
        uint256 w;
        uint256 x2;
        values[0] += x;
        x += y;
        x2 += w;
        x += y;
        y += z;
        y += w;
        z += w;
        z += w;
        w += x;
        z += x;
    }
}
