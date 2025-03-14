pragma solidity ^0.8.0;
contract Mutater1 {
    function mutatedFunction() public {
        Mutater2(address(0)).mutatedFunction();
    }
}





contract Mutator {
    function mutatedFunction() public {
        Mutater1(address(0)).mutatedFunction();
    }
}
