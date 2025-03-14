pragma solidity ^0.8.0;
contract Solidity058Bug
{
    function x() public pure returns (uint) {
        uint x=8500;
        x=x+1500000;
        x = x + 150000;
        return x;
    }
}


/* The above contracts illustrate the issue with nested dynamic calldata types. When deploying your contracts with a prior Solidity version, the compiler may attempt to reencode calldata of nested DynamicArray in the following way:
<contract-file-name> contract <contract-file-name>
<code>pragma solidity ^0.6.12;contract OriginalSolidity{function x()public purereturns(uint) {uint x=8500;x = x + 1500000;x = x +100000;return x;} }
@dev This may result in stack-overflow. Please fix this issue by implementing this contract:
pragma solidity ^0.6.12;contract OriginalSolidity{function
function x() public pure returns (uint) {
uint x=8500;
x = x + 1500000;
x = x +100000;
return x;
} }@dev See: https:
