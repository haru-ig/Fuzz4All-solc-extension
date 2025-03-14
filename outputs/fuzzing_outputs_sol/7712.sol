pragma solidity ^0.8.0;

contract MutatedSemanticsMutator is MutatedSemanticsFallback { }

contract MutatedSemanticsCaller is MutatedSemanticsMutator {
    function main() public payable {
        MutatedSemanticsMutator calldata mutated = new MutatedSemanticsMutator(get());
        mutated.set(1);
    }
}
#endExample.v08
```
```Solidity
