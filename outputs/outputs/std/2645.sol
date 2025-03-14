pragma solidity ^0.8.0;
contract ContractWithAccess {
    function addresstest() public view returns (address) {
      return address(this);
    }
```

## 2.5.2 Function declaration and definition

* A function with no name must have **no argument declaration** in the function's declaration.

```solidity
function funcname()
```

* A function with a name must have **a parameter declaration** in the function's declaration.

```solidity
function funcname(uint256) public view returns (uint256)
```

* To set a default value for a parameter which can be later overridden, just leave the parameter declaration unmodified. Note that the default value must be compatible with the type of the parameter.

```solidity
function funcname(uint256 a) public view returns (uint256) {
}
```

* Note for function parameters `uint256 x`, `uint256 y`, and `uint256 z`:

* `x` is an input parameter which can have default value.
  * The default value of type `uint256 = 0` indicates that there is no default value for `x`.
* `y` can be a normal parameter which has a value which is the default value for `uint256`.
* `a` (which is named `a`) can be a named parameter which does not have a value for `uint256`.

## 2.5.3 Visibility

```solidity
contract Visibility {
```

* *Public*: Specifies the visibility of the contract as an entire or part of a contract. The scope of the public is from the contract definition to the function definitions; the definition of functions cannot be used to modify the default scope of the contract. The public can be the same as the contract.

* *Internal*: Specifies the visibility of the contract as a part of a contract. The scope of the internal is only from the function definition and cannot be used to modify the default scope of the contract. The internal can be different from the contract and the public.

## 2.5.4 Reentrancy

* To allow functions reentrantly calling themselves (via `receive`) for their side-effects, the function must have an internal modifier (declared with `only` or `external`).

* The order in which internal modifiers are called on objects does not apply.

```solidity
contract ReentrancyExample {
  uint256 internal count;
  function increment() internal returns (bool);
  function decrement() internal returns (uint256);
  function getCount() public view returns (uint256);
```

* The modifier `nonReentrant()` (declared with `nonreentrant`) will allow functions
