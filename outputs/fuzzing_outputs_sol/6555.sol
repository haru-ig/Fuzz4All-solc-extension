pragma solidity ^0.8.0;
interface I {
    function doSomething(address _target, uint _number) external returns (uint);
}
contract Caller {
    function callSomeContract() public {
        I interfaceImplementation = I(0xA27C607291F354410EB179219DB59E21687281dD);
        uint numberInterface = 898;


        (uint result, ) = interfaceImplementation.callStatic.doSomething.value(1){transfer:0x123, _target:address(0)};
        assertTrue(result == 10);
        assertTrue(numberInterface == 898);
        assertTrue(address(2) == address(0xA27C607291F354410EB179219DB59E21687281dD));
    }

    receive () external payable { }
}
