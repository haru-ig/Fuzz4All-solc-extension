pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample4 {
    function main() public pure {
        uint256[] memory values;
        uint256 x;
        uint256 y;
        values[1] += x;
        x += y;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample5 {
    function main() public pure {
        uint256[] memory values;
        uint256 x;
        uint256 y;
        uint256 z;
        uint256 w;

        values[1] += x;
        x += y;
        y += z;
        z += w;
        w += x;

        x += y;
        y += x;
    }
}
