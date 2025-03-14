pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SemanticDifferent1 {
    struct ContractData { uint[] immutable Array; }

    function mutate(ContractData memory data) public pure {
        this.Array.push(1);

        this.Array.push(data.Array.length);
    }
}
