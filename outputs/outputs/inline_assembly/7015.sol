pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88SemialgebraicEquiv
{

    uint256 public Counter;
    bool public isCalled;

    function constructor_0a(  ) public
    {
        Counter = 4;
        isCalled = true;
    }


    constructor_0a( ) public
    {
        Counter = 4;
        isCalled = true;
    }


    function test( ) public
    {

        isCalled = false;
        Counter++;
    }


    function sub_1(  ) public
    {

        isCalled = true;
        Counter++;
    }


    function test( ) public
    {


        Counter++;
    }
}
contract OptimizelyExample88SemialgebraicEquivWithEvm {

    uint256 public Counter;
    bool public isCalled;




    constructor() {
        Counter = 4
