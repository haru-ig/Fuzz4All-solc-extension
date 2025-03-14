pragma solidity ^0.8.0;
contract SolveModul
{
    uint public counter = 86493;
    uint  max =   2**uint(32);
    uint internal constant uintMax =  2**uint(256);

    modifier isEven
    {
        require(counter%2==0);
        _;
    }

    modifier isPositiveInteger
    {
        require(counter>0 &&counter<= uintMax);
        _;
    }

    constructor() public {
        doSomething();
        counter=10
    }


    function doSomething() public pure returns (uint) {
        return doAdd(counter);
    }


    uint internal doAdd(uint a) public view returns (uint) {
        a +=999;

        return a;
    }

    function test111() public view returns (uint) {
        return counter * 100;
    }
}
