pragma solidity ^0.8.0;
contract Mutator {
    function testMethod(int v) public pure {

        v = (v == 0)? v + 1 : (-v + 1);
    }
}
```

## Caveats

- Not guaranteed to be recovered.
- No memory usage optimization. If the contract contains many variables, it might be a good idea to change any of them to local variables
- There is no runtime type information in Solidity.
- Suitable for low-level development, but not for high-level development.
- Low-level optimization to a degree and does not address the performance bottleneck of most low-level applications.
- Not meant for security.
- Non-reentrancy, including functions with `returns`, `payable`, or `constructor` modifier.
- Non-static data structures should not be accessed from an external.
- Contracts and the functions in them should not be public.
- Modifiers must be defined in the outer scope
