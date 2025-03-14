pragma solidity ^0.8.0;
contract Mutater3 {
    function mutatedFunction() public {
        bool isExecuted = false;
        mutatedFunctionImpl();
        isExecuted = true;
    }
    function mutatedFunctionImpl() public pure {
        mutatedFunction2();
    }
    function mutatedFunction2() internal pure {
        mutatedFunction3();
    }
    function mutatedFunction3() internal pure {
        mutatedFunction4();
    }
    function mutatedFunction4() internal pure {
        mutatedFunction5();
    }
    function mutatedFunction5() internal pure {}
}
