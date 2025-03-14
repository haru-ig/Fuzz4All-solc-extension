pragma solidity ^0.8.0;
contract SemanticallyEquivalent_1 {
    uint32 a;

    function f(uint32 x) public returns (uint32){
        return a = 5;
    }
}
pragma solidity ^0.8.2;
library Library5 {
    uint32 constant a = 5;
    uint32 constant b = 2147483648;
    function f(uint32 x) public returns (uint32){
        return 5;
    }
    function g(uint32 x) public returns (uint32){
        return 2147483648;
    }
}
pragma solidity ^0.8.2;
contract SemanticallyEquivalent3 {
    uint32 constant a = 5;
    uint32 constant b = 2147483648;
    function f(uint32 x) public returns (uint32){
        return 5;
    }
    function g(uint32 x) public returns (uint32){
        return 2147483648;
    }
}
