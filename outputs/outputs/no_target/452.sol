pragma solidity ^0.8.0;
contract SemanticContract {
    enum Kind {A, B}
    semanticType = Semantic(x:=false, y:=false, z:=false, y_:=uint256(0), z_=uint16(0));
    Kind constant = Kind.A;
    constructor() {
        semanticType.y_ = uint256.max;
        semanticType.z_ = uint16.max;
    }
}
contract SimpleType {
    function f(uint x) public pure {
        uint y = uint(-(uint(x)+uint(-uint(-(x+2)))-2)+uint(-((uint(x)+uint(-uint(-(x+2)))-2)))));
        assert((y-y)^(-uint(y)))==uint((-1))^uint((y)));
        uint z = uint(y)-uint(-x);
        assert(uint(x)-y+(uint(x)-uint(-x))^z^uint((x))!=uint((-1)));
    }
}
}



                              ^ (Relevant source part starts here and spans across multiple lines).
```

`compiler/errors/contract.compile_contracts_1.py`
```
/home/changhua/Repos/truffle/packages/truffle/cli/../cli/lib/console.py
```
```
/usr/local/bin/truffle
```
```
Compiling.../contracts/SemanticContract2.sol
truffle> compile Contracts
Compiling.../contracts/SemanticContract2.sol
/home/changhua/Repos/truffle/packages/truffle/cli/commands/compile.py:194: DeprecationWarning: Compiler.compile_contracts_by_prefix is deprecated. Use Compiler.compile_contracts instead.
  deprecation_warning=print(
/home/changhua/Repos/truffle/packages/truffle/cli/commands/compile.py:198: DeprecationWarning: Compiler.compile_contracts_by_prefix is deprecated. Use Compiler.compile_contracts instead.
  deprecation_warning=print(
/home/changhua/Repos/truffle/packages/truffle/cli/commands/compile.py:211: DeprecationWarning: Compiler.compile_contracts_by_prefix is deprecated. Use Compiler.compile_contracts instead.
  deprecation_warning=print(
/home/changhua/Repos/truffle/packages/truffle/cli/commands/compile.py:213: DeprecationWarning: Compiler.compile_contracts_by_prefix is deprecated. Use Compiler.compile_contracts instead.
  deprecation_warning=print(
/home/changhua/Repos/truffle/packages/truffle/cli
