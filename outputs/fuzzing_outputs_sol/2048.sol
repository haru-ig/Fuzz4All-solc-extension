pragma solidity ^0.8.0;
contract Mutater2 {
    function mutatedFunction() public {
        mutatedFunctionImpl();
    }
    function mutatedFunctionImpl() public(address payable) pure {
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
    function mutatedFunction5() public pure {}
}

pragma solidity ^0.8.0;
contract Mutater2 {
    function mutatedFunction() public {
        mutatedFunctionImpl();
    }
    function mutatedFunctionImpl() public {
        mutatedFunction2();
    }
    function mutatedFunction2() internal {
        mutatedFunction3();
    }
    function mutatedFunction3() internal {
        mutatedFunction4();
    }
    function mutatedFunction4() internal {
        mutatedFunction5();
    }
    function mutatedFunction5() public {}
}

pragma solidity ^0.8.0;
contract Mutater2 {
    function mutatedFunction(address payable _to) public {
        mutatedFunctionImpl();
    }
    function mutatedFunctionImpl() public {
        mutatedFunction2(_to);
    }
    function mutatedFunction2(address payable _to) internal {
        mutatedFunction3(_to);
    }
    function mutatedFunction3(address payable _to) internal {
        mutatedFunction4(_to);
    }
    function mutatedFunction4(address payable _to) internal {
        mutatedFunction5(_to);
    }
    function mutatedFunction5(address payable _to) internal {
    }
}
