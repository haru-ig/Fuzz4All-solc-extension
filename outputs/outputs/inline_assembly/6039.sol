pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample8 {
    function main() public pure {
        uint256[5] memory values;
        uint256 new_data;
        new_data = 456;
        values[4] = new_data;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample9 {
    function main() public pure {
        uint data = 456;
        assembly {
            data = 789
        }
    }
}

/* pragma solidity ^0.6.2;`
The compiler will generate warnings about mismatched Solidity language versions due to the Solidity compiler being unable to interpret the inline assembly.

When developing smart contracts, it is important to know exactly where and how the inline assembly will be used.

## Example 1
This example illustrates how you can write a smart contract in a high-level language and inlining the smart contract to create a simpler program. You can read more about this approach in [2]_.

We assume a Solidity compiler called `solc` with a language version that was installed by Solidity as part of the installation process. We also assume the compiler is configured for Solidity syntax version 0.8.

First, we create the following code snippet:

<section class="language-solidity">
<pre><code class="language-solidity">pragma solidity ^0.8.0;
contract Example {
    function main() public pure {
        uint256 x = 1;
        uint256 y = 2;
        uint[2] memory z = [1,2];
        uint99[2,4] memory w = [[1,2],[3,4]];
    }
}</code></pre>
</section>

The code above is syntactically correct, but it is not semantically equivalent to the previous code snippet. The compiler can understand `x == 6` and will create a bytecode that executes the same instructions when compiled to assembly.

Next, we run `solc --emitAssembly --abi example.sol` in the directory containing the example code. Remember to update the `--emitAssembly` flag with `--abi`, and the last flag `--bin` to produce a binary. In your terminal, you can see that a new, semantically equivalent code has been written to the directory.

To compile the program:

<section class="language-bash">
<pre><code class="language-bash">solc solidity --emitAssembly --
