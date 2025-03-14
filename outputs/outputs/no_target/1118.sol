pragma solidity ^0.8.0;
```

Here is a screenshot of the generated solidity code:

![semantic mutation8 screenshot](../images/semantic-mutation-8.png)

*Note that this test does not show that we cannot mutate the semantically equivalent solidity code and will silently produce unexpected code. However, the mutations will not affect anything semantic by itself, but will change the meaning of the previous code in a different way.*

We can also create semantically equivalent Solidity code with the use of semantic mutation. After executing the command, the mutated codes can be executed without changing the meaning of the previously executed codes.

In case that the semantic mutation produces unexpected code, it is expected to find bugs in the program during the execution. In this case, we can easily identify the defect in the semantics of the semantic mutation.
