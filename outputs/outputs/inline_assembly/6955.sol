pragma solidity ^0.8.0;
contract OptimizelyExample84_mutated {
    uint[] public array;

    function test() public {
        OptimizelyExample84_mutated storage optimizedContract = OptimizelyExample84_mutated(0x499c1e7eb06965C83eDb9109F11062119e17991E);

        array = new uint[](10000000);
        array.push(address(optimizedContract));
        Counter = 9995833579222533964017803;

        array = array[0:array.length];
    }
}
