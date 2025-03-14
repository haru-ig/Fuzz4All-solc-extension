pragma solidity ^0.8.0;
contract MutatedFunction {
    function nonMutantFunction() public pure { }
    function nonMutantFunctionMutated() external pure { }
}

pragma solidity ^0.8.0;
contract SimpleContract {
    function simpleMethod() public pure { }
}
pragma solidity ^0.8.0;
