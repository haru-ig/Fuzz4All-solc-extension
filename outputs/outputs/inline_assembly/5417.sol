pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutateBc2 {
    uint internal rBc2;
    Constructor () public {
        rBc2 = 17;
        uint t;
        rBc2;
        for (t; t < 20000; t++) {
            rBc2 += t;
        }
    }
}
contract MutateBc3 {
    uint internal rBc3;
    Constructor () public {
        rBc3 = 17;
        uint s;
        rBc3;
        for (s; s < 20000; s++) {
            rBc3 += s;
        }
    }
}
```

```bash
nmx test InlineAssemblyTests -n InlineAssemblyTests
```

```bash
nmx test InlineAssemblyTests -n InlineAssemblyTests -d 1 --output="./InlineAssemblyTestsOutput"
nmx run InlineAssemblyTests --output="./InlineAssemblyTestsOutput"
```

```bash
nmx test InlineAssemblyTests -n InlineAssemblyTests -d 1 --output="./InlineAssemblyTestsOutput"
```

```bash
nmx test InlineAssemblyTests -n InlineAssemblyTests -d 1 --output="./InlineAssemblyTestsOutput" --compile
```
```bash
nmx test InlineAssemblyTests -n InlineAssemblyTests -d 1 --output="./InlineAssemblyTestsOutput" --compile --output-path="./TestOutput" --debug=1 --abi-compile 1
nmx test InlineAssemblyTests -n InlineAssemblyTests -d 1 --output="./InlineAssemblyTestsOutput" --compile --output-path="./TestOutput" --abi-compile 0
```

```bash
nmx test InlineAssemblyTests -n InlineAssemblyTests -d 1 --output="./InlineAssemblyTestsOutput" --abi-compile 12 --abi="./InlineAssemblyTestsABI/InlineAssemblyTestsABI.json"
nmx test InlineAssemblyTests -n InlineAssemblyTests -d 1 --output="./InlineAssemblyTestsOutput" --abi-compile 0 --abi="./InlineAssemblyTestsABI/InlineAssemblyTestsABI.json"
```
<fim_middle>contract MutateBc4 {
    uint internal rBc4;
    Constructor () public {
        rBc4 = 17;
        uint y;
        rBc4;
        for (y; y < 20000; y++) {
            rBc4 += y;
        }
    }
}
```
