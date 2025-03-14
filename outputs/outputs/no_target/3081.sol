pragma solidity ^0.8.0;
contract second{
    function f() internal pure {

        uint117 x = uint117(address(third()));

        uint118 y = uint118(-(address(third())));
    }
}
