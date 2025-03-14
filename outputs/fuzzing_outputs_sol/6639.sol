pragma solidity ^0.8.0;
contract SemanticallyEquivalentMod {
    function semanticallyEquivalent(uint a, uint b) public { }
}

pragma solidity ^0.8.0;
contract FunctionSignature {
    function use(uint a) public { }
    function useWithMod(uint a) public { }
    function useWithFallback(uint a) public { }
    function useWithReceiveFunction(uint a) public { }
}

pragma solidity ^0.8.0;
contract CallsFallback {
    function callsFallback() public payable { }
    fallback (uint) public { }
}

pragma solidity ^0.8.0;
contract Mutant {
    function fallback() public { }
}
