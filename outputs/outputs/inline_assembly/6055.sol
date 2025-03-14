pragma solidity ^0.8.0;
contract MutatedMutantAssemblyExample6 {

    function main() public pure {
        uint256[] memory values;
        uint256 x;
        uint256 y;
        uint256 z;
        uint256 w;
        values[1] += x;
        x += y;
        y += z;
        w += z;
        uint256 z2;
        uint256 w2;

        z2 = w;
        w2 = z;
        z = x;
        x = y;
        y = z2;
        z = w2;
        z2 = z;
        w = x;
        z = x;
        z = x;
        z2 = y;
        w = y;
        x = y;
        y = w;
        x = y;
        y = z2;
        z = w;
        x = z;
        z = x;
        x += y;
    }
}

pragma solidity ^0.8.0;
contract MutatedMutantAssemblyExample7 {

    function main() public pure {
        uint256[] memory values;
        uint256 x;
        uint256 y;
        uint256 z;
        uint256 w;
        values[1] += x;
        uint32 i;
        for(i = 0; i < 10000; i++) {
            x += y;
        }
        for(i = 0; i < 10000; i++) {
            uint256 z2;
            uint256 w2;
            z2 = x;
            w2 = z;
            z = w;
            z = x;
            z = y;
            w = w2;
            x = z;
            w2 = y
