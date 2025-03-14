pragma solidity ^0.8.0;
contract Mutater2 {
    function mutatedFunction() public pure {}
    function mutatedFunctionImpl() public pure {}
    function mutatedFunction2() internal pure {}
    function mutatedFunction3() internal pure {}
    function mutatedFunction4() internal pure {}
    function mutatedFunction5() internal pure {}
}

pragma solidity ^0.8.0;
contract Mutant1A {

    receive() external payable {}

    uint internal amountMutant1A;
    uint constant amountConstant1;

    function mutantFunctionToMutant1(uint _amount) public payable {}

    function transferEtherToMutant1() public {
        mutantFunctionToMutant1(amountConstant1);
    }

    function mutatedFunction() public pure {}
}
pragma solidity ^0.8.0;
contract Mutant1B {

    receive() external payable {}

    uint internal amountMutant1B;

    uint amountConstant2;

    function mutantFunctionToMutant1(uint _amount) public payable {}

    function transferEtherToMutant1() public {
        mutantFunctionToMutant1(amountConstant2);
    }

    function mutatedFunction() public pure {}
}

pragma solidity ^0.8.0;
contract Mutant1A {

    receive() external payable {}

    uint internal amountMutant1
