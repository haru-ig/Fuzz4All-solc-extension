pragma solidity ^0.8.0;
function newY() public returns (uint256) {
    return (x = 123);
}
```

---

# 4. Write a smart contract from scratch without the use of any external module

![1576310710570](img/2021-08-03-11-15-20.png)

For the sake of explanation, do the following modifications in your source code (the contract `ContractA.sol`):

a) Don’t add an external module: `import "https://raw.githubusercontent.com/soliditylang/examples/master/ethernic_contract/EthernicContract.sol"; using EthernicContract is as simple as using any other interface such as ERC20.`.

b) In the body of a contract, try to place inline assembly such that the code to be interpreted is kept short. Try not to use variable declarations, data structures or arrays unless necessary.

```
pragma solidity ^0.8.0;
contract ContractA {
    uint256 public constant constantValue = 3;
    function setPublicFunctionResult() public {
        publicxResult = getPublicFunctionName();
    }
    uint256 public publicxResult;
    uint256 public constant constantContractFunction;
    uint256 private privatexResult;

    function getPublicFunctionName() public view returns (uint256) {
        return constantValue;
    }

    function getPrivateFunctionName() public view returns (uint256) {
        return 1;
    }
}
```

c) In the body of the contract, try to minimize all function calls. Especially, try to limit function invocations to a single line, avoid unnecessary function calls, and write small functions. Try not to use `if-else` statements, `for-while` or `while-do-while` loops, especially loops that access only a single variable (e.g., `contract.func()`. This would complicate your contract a great deal.

```
pragma solidity ^0.8.0;
contract ContractA {
    uint8 public constant publicxResult = uint8(1);

    uint256 public constant constantContractFunction;
    uint256 private privatexResult;

    function publicCall() public returns (uint256) {
        return EthernicContract.public2();
    }

    function getPublicFunctionName() public view returns (uint256) {
        return Ethernic
