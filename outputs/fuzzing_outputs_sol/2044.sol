pragma solidity ^0.8.0;
contract Mutater3 {
    function mutatedFunction() public {
        mutatedFunctionImpl();
    }
    function mutatedFunctionImpl() public pure {
        mutatedFunction2();
    }
    function mutatedFunction2() internal pure {}
    function mutatedFunction3() internal pure {}
    function mutatedFunction4() internal pure {}
    function mutatedFunction5() internal pure {}
}

contract Caller {
    fallback();
    receive() external pure { }
}

contract Mutater5 {
    function mutatedFunction() public {
        mutatedFunctionImpl();
    }
    function mutatedFunctionImpl() public pure {}
    function mutatedFunction2() internal pure {
        mutatedFunction3();
    }
    function mutatedFunction3() internal pure {
        mutatedFunction4();
    }
    function mutatedFunction4() internal pure {
        mutatedFunction5();
    }
    function mutatedFunction5() internal pure {
        selfdestruct(accounts[1]);
    }
}
