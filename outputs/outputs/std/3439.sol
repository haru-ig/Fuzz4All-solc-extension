pragma solidity ^0.8.0;
enum Color { Red, Green, Blue }
contract MyContractMock {
    uint myUint = 0;
    function myfunction(Color _MyColor) internal pure {
        Console.print(_MyColor);
    }
}
