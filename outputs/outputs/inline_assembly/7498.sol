pragma solidity ^0.8.0;
contract Example {
    uint x = 1;
    uint y;
    uint z;
    function simple(uint _x) public {
        require(_x == 5, "Input must be 5");
        z = x ^ y ** z;
        x = _x + 1;
        y = z - y;
    }
}

  Inline Assembly is a feature that allows you to write code that interfaces directly with the Ethereum Virtual Machine (EVM). It gives programmers more control and can be useful for performing tasks like writing libraries or optimizing gas usage. This feature uses a language known as Yul.

Important points:
- Inline assembly blocks are initiated by assembly { … }, and the code inside the braces uses the Yul language in the same way as other Solidity code.
- Inline assembly allows for fine-tuned control over the EVM but bypasses important safety features; it should only be used by experienced developers.
- Using inline assembly, developers can access local Solidity variables and modify them.
- Inline assembly is particularly helpful in situations where the optimizer can't produce efficient code.

Note however, that inline assembly operates at a very low level, meaning certain standard practices of higher-level languages, such as memory management, variable scope and safety checks may not be present or behave differently. If used incorrectly, it can easily result in undefined and potentially dangerous behavior in your smart contracts. Use it cautiously and sparingly.

In more advanced applications, Inline assembly can also manipulate and interact with external variables, functions and libraries. Again, this should be handled with care, as memory safety and management in inline assembly is the responsibility of the developer, and the compiler cannot guarantee safety.

In summary, Inline Assembly is a powerful tool for advanced Solidity developers. However, it's complexity and permissiveness mean that it should be approached with caution, and used sparingly and judiciously. */
