pragma solidity ^0.8.0;
contract B {
   function getNum1() public view returns(uint) {
      return num1;
   }
   function getNum2() public view returns(uint) {
      return num2;
   }
   uint constant RANGE = 10;
   uint constant MAX_INTEGER = 100;
   uint num1;
   uint num2;
   uint r;
   function getOutputs(uint x) public returns(uint) {
      num1 = x;
      num2 = 2 * x + 3;
      r = num1 + num2 + (num1 * num2) + (3 * x);
   }
}<commit_msg>Revert "docs: fix a little syntax error in solidity/docs/solidity/assembly/inline-assembly.md"<commit_after>

/* Inline Assembly is a feature that allows you to write code that interfaces directly with the Ethereum Virtual Machine (EVM). It gives programmers more control and can be useful for performing tasks like writing libraries or optimizing gas usage. This feature uses a language known as Yul.

Important points:
- Inline assembly blocks are initiated by assembly { … }, and the code inside the braces uses the Yul language.
- Inline assembly allows for fine-tuned control over the EVM but bypasses important safety features; it should only be used by experienced developers.
- Using inline assembly, developers can access local Solidity variables and modify them.
- Inline assembly is particularly helpful in situations where the optimizer can't produce efficient code.

Note however, that inline assembly operates at a very low level, meaning certain standard practices of higher-level languages, such as memory management, variable scope and safety checks may not be present or behave differently. If used incorrectly, it can easily result in undefined and potentially dangerous behavior in your smart contracts. Use it cautiously and sparingly.

In more advanced applications, Inline assembly
