pragma solidity ^0.8.0;

contract SemanticsEquivalence11A is SemanticsEquivalence10 {   }
contract SemanticsEquivalence11B is SemanticsEquivalence10 {

    function memorySize() public pure returns (uint) {   }
}

pragma solidity ^0.8.0;

contract SemanticsEquivalence12A {   }
contract SemanticsEquivalence12B {

    function memorySize() public pure returns (uint) {   }
}
