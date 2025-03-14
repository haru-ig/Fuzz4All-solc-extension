pragma solidity ^0.8.0;
contract Mutant1FallbackFunction {
    function mutantSetFallbackFunction() public pure returns(uint) {
        uint a;
        assembly {
            a := 2 ** 20
        }
        return a;
    }
}
interface Mutant2FallbackFunction {
    function mutantSetFallbackFunction() public pure returns (uint) {
        uint a;
        assembly {
            a := a + 27 ** 20
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract Mutant2FallbackFunction {
    function mutantSetFallbackFunction() public pure returns (uint) {
       uint a;
       assembly {
           a := a + 27
       }
       return a;
    }
}

pragma solidity ^0.8.0;
contract Mutant3FallbackFunction {
    function mutantSetFallbackFunction() public pure returns (uint) {
        uint a = 2 ** 20;
        uint b = 2 ** 20;
        uint c = a + b;
        uint d = a / b;
        uint e = a * b;
        uint f = a ** b;
        return 2 ** 20;
    }
}
