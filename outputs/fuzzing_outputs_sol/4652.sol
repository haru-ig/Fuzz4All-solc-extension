pragma solidity ^0.8.0;
contract Mutator {
    address public mutatedContract;

    constructor(AddressOfSomething _address) {
        mutatedContract = _address;
    }

    function shouldBe(uint counter) internal view returns (bool) {
        counter++;
        return true;
    }
    function mutate() public {
        (bool success, ) = mutatedContract.call{value: 0.1 ether}("");
        require(success, "failed to mutate");
    }
}
```



## Appendix: Reference

[Solidity contract specifications - EIP-1884](https:
[[solidity] Contracts with fallback functions](https:
[[Solidity] How do I create a contract and add a fallback function?](https:
[[solidity] Contracts with fallback functions in evm](https:
[solidity: Contracts with fakes](https:
