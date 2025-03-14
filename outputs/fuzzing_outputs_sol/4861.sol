pragma solidity ^0.8.0;
contract Mutator3 {
    constructor(address payable _contract) public payable {
        Mutation.toContract(_contract).payWithFallback.value(_contract.balance)();
    }
}
contract Reverter3 {}
contract Mutation {
    function toContract(address payable _payable) internal view returns (Mutator2 _mutable) {
        return Mutator2(_payable);
    }
}
```
