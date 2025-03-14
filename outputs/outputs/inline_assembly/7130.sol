pragma solidity ^0.8.0;
contract OptimizelyExample106MutatorSemanticallyEquiv {
    uint public x;
    function myFunction( ) public {
        x = x ^ 1;
    }
    function test( ) public {
        x = (1^1 + 1)^1;
        x = 1 + 1^1;
        x = x ^ 1;
    }
    function test_old( ) public {
        x = 1 + x;
        x = 1 + (x^x) + 1;
        x = 1 + (x^x) + 1;
    }
}
