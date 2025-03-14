pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample {
    IMutatedSolidityAssemblyExample mutatedReference;
    constructor(IMutatedSolidityAssemblyExample M) public {
        mutatedReference = M;
        mutatedReference.a(321 + 77);
    }
}
```
<br />
<br />

<a name="solidity-assembly-interoperability"></a>
