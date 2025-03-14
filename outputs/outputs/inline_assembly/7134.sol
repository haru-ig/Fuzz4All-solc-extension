pragma solidity ^0.8.0;
contract OptimizelyExample106Semantics1{
    uint public x;
    function test( ) public {
        x = 1;
        x = 1 + 1;
        x = (1+1)^1;
        x = 1^1+1;
        x = 1+1^1;
        x = x^1;
    }
    function test_old( ) public {
        x = x + 1;
        x = 1 + x;
        x = 1 + (1+1);
        x = (1+x)^x;
        x = x^x + 1;
        x = x + x^x;
        x = x ^ x;
    }
}
contract OptimizelyExample106Semantics2{
    uint public x;
    function test( ) public {
        x = 1;
        x = x + 1;
        x = 1 + 1 + x;
        x = 1 + (1 + x)^x;
        x = (1+(1 + x)**x + x + x^x);
        x = 1 + x ^ x;
    }
    function test_old( ) public {
        x = x + 1;
        x = x ^ 1;
    }
}
contract OptimizelyExample106Semantics3{
    uint public x;
    function test( ) public {
        x = 1;
