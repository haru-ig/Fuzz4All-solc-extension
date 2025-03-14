pragma solidity ^0.8.0;
library InlineAssemblyExemple {
    enum SomeConstants {
        SomeConstant0,
        SomeConstant1
    }
    struct SomeStructure {
        uint constantValue;
        SomeConstants constant;
        function getSomething() internal pure returns (uint) {
            return constantValue;
        }
    }

}
