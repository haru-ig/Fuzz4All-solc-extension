pragma solidity ^0.8.0;
import "../../../node_modules/solidity-coverage/build/webpack/Solcover.sol";

contract MutatedSemanticallyEquivalentAssemblyExample8 is MutatedSemanticallyEquivalentAssemblyExample2, MutatedSemanticallyEquivalentAssemblyExample4{

    function main() public pure {
        Immutable memory x;
        x.x += 8;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample10 is MutatedSemanticallyEquivalentAssemblyExample6, MutatedSemanticallyEquivalentAssemblyExample7{

    function main() public pure {
        Immutable memory x;
        x = 7;
        x;
    }
}
