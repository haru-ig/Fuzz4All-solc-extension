pragma solidity ^0.8.0;
contract MutatedEquivalent
{
    uint[] public multiples = new uint[](4);


    function multiplyAdd(int m) public view returns(uint)
    {
        uint n = 0;
        for (uint i = 0; i < 4; i++)
        {
            n += multiples[i] * m;
        }
        return n;
    }
}
```

## Notes:

* While Solidity has many built-in function contracts, its built-in methods are limited to the number of available internal variables. Some of those methods (like `add` and `mul`) can be replaced for custom functions. E.g., the built-in `.add` method takes two arguments of any nonzero type (int and bytes32 for example), and provides a nonzero result iff both arguments are zero.

* For more information about the Solidity standard, visit the official [Solidity site](https:

* The `bytes` data type is commonly used to store raw data in a contract, but note that Solidity will not allow you to store raw data in a contract because the compiler treats each address as an immutable data storage. Thus, the compiler will change the memory layout on transaction execution, making it unsafe for raw data storage.

* You can import more than one single contract file for a function, which are mutually exclusive in the compiler, and so modifying one variable can affect another variable. Note this means that each variable in the main contract file (at least that is the intended usage pattern) must be declared separately.

* It is possible to instantiate a contract with zero and non-zero arguments, although you can no longer rely on using these two methods for this reason. E.g., if you create a function that has a constant argument named `'x'`, you can declare it with an initial value of '0' and then later do the following:

```
    assert(x > 0);
```

* Even if you declare a function, it will have no value until you actually call it. Note this also means that an empty contract must have any number and size of storage parameters declared, or it will be compiled, but have no storage.

* The Solidity compiler and its compiler infrastructure can only help with one aspect of coding: correctness. We can't have one code-basis that doesn't have the correct functionality without us realizing it. E.g., to write Solidity code for smart contracts, it's important to be extremely careful to understand the full purpose of each given Solidity function, because smart contracts tend to be very convoluted. E.g., the function `setStorage(uint256 x)` declares a contract storage variable x of type `uint256`, but there are only four possible values for that variable - 0 (zero), 1 (one), 2 (two), and 5 (five). Therefore, you should declare this as a `uint8`, which is a more efficient form of this constant. E.g., instead of:

```
    uint8 data;
```

you can do:
