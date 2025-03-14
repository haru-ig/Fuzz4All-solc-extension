pragma solidity ^0.8.0;
contract Test74 {
    function j(uint256[_] memory) public pure {
        return;
    }
}

```

</details>

## Usage

Solidity compiler must be in release mode

After `make`, you should see new output file for test in `artifacts/` folder.
```bash
$ solc -c Release -o../test74-output-84000.bin./test74-output-84000.bin contract/Test74.sol
```



The tests are run before compilation (not during). Run the following to execute the test:
```bash
# Release mode.
npx truffle test
# Debug mode.
solium test
solium-test74
```
