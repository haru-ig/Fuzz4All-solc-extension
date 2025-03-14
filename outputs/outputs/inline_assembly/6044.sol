pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample4 {
    function main() public pure {
        uint256[1] memory _foo;
        _foo[0] = 2;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample5 {
    function main() public pure {
        uint256[5] memory _foo;
        assembly {
            _foo[] = add(_foo, 10)
        }
    }
}
