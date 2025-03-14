pragma solidity ^0.8.0;
contract SolveWithModul
{
   uint public constant test3 = 100;
   uint public constant test = 10;
   functiuon solve() public pure returns (uint){
      uint r;
      uint i;
      if (test == 0){
         r = 1;
      }else{
         for (i = 0; i < 10; i++){
         }
         r = 2;
      }
      return r;
    }
}

```

```bash
1:11-1:49: error: Inline assembly statements are only allowed at the toplevel.
2:22-2:41: error: Inline assembly statements are only allowed at the toplevel.
3:37-3:40: error: Inline assembly statements are only allowed at the toplevel.
4:28-4:30: error: Inlined function with a pure nonstatic storage modifier (with no return type declaration) must return the same value as the externally declared variable.
5:35-5:37: warning: Inline assembly in Solidity is a feature that allows you to write code that interfaces directly with the Ethereum Virtual Machine (EVM). It gives programmers more control and can be useful for performing tasks like writing libraries or optimizing gas usage. This feature uses a language known as Yul. [yul-strict]
```

```bash
1:48: warning: Inlined function with a nonstatic storage modifier (with return type declaration) must return the same value as the externally declared variable.
6:53-6:55: warning: Inlined function with a nonstatic storage modifier (with return type declaration) must return the same value as the externally declared variable.
7:66-7:68: warning: Inlined function with a nonstatic storage modifier (with return type declaration) must return the same value as the externally declared variable.
