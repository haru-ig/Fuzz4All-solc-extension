pragma solidity ^0.8.0;
contract Contract { function toBugger()
    public pure
        returns (address) { unchecked
        }
    }
```

_The program does not compile_
```shell-session
solc "0.7.5-4623506.6b36ea.sol"
```

Please refer to the [test case](https:
