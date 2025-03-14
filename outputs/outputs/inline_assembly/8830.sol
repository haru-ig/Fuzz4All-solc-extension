pragma solidity ^0.8.0;
contract Test
{
    uint constant int_max = 2**31 - 1;
    uint x = 2**31 - 1;
    uint z;
    function test() public {
        z = x / int_max;
    }
}
```

## <KEY>

**Example 2**

```solidity
pragma solidity ^0.8.0;
contract Test
{
    function test() public {}
    function test2() public {}
    fallback() external payable {}
}
```
| Type                                                               | Level     |
|--------------------------------------------------------------------|-----------|
| [SOLIDITY_COMPILER_ONLY]                                                  | 7         |
| [SOLIDITY_COMPILER_WARNING]                                                | 8         |
| [SOLIDITY_LINT_OFF]                                                       | 9         |
| [SOLIDITY_LINT_WARNING]                                                     | 10        |
| [SOLIDITY_LINT_MODEREGULATORY]                                                  | 11        |
| [SOLIDITY_LINT_REACT]                                                       | 12        |
| [SOLIDITY_RUNTIME_CHECKS]                                                   | 0         |
| [SOLIDITY_COMPILE_TYPE"]                                                    | 13        |
| [SOLIDITY_RUNTIME_TYPE"]                                                     | 12        |
| [SOLIDITY_COMPILER_SKIP_CHECKS_INJECTION]                                 | 14        |
| [SOLIDITY_COMPILATION_ERROR]                                                | 15        |
| [SOLIDITY_RUNTIME_ERROR]                                                    | 16        |
| [SOLIDITY_COMPILATION_WARNING]                                             | 6         |
| [SOLIDITY_COMPILATION_POTENTIAL_BUG]                                        | 18        |
| [SOLIDITY_COMPILER_HACKER]                                                    | 0         |


## [0xd58bc38567a16a9543c4b3d81a47fa1ee80cb37a]

**Example 3**

```solidity
pragma solidity ^0.8.0;
contract Test
{
    enum TestEnum
    {
        TEST1, TEST2, TEST3
    }

    uint constant int_max = 2**31 - 1;
    TestEnum val;

    function test() public {
        TestEnum test1 = TestEnum.TEST2;
    }
}
```
| Type                                                               | Level     |
|--------------------------------------------------------------------|-----------|
| [SOLIDITY_COMPILER_ONLY]                                                  | 7         |
| [SOLIDITY_COMPILER_WARNING]
