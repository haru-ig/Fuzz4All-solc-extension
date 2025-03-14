pragma solidity ^0.8.0;
contract C {
    event Log0(address a);
    event Log1(uint b);
    event Log2(int c);
    event Log3(decimal d);
    event Log4(uint256 e + uint256 f + uint256 g);
    event Log5(uint160 e - uint160 f - uint160 g);
    event Log6(uint160 a);
    event Log7(uint8 a);
    event Log8(address b);

    function test() public view {}
}
