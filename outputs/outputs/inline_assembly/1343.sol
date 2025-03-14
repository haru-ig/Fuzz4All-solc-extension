pragma solidity ^0.8.0;
contract Mutant7a {
    bytes1 value;
    function f() public {
        bytes1 _ = abi.encodePacked(value);
        value = 65;
    }
}
contract Mutant7b
{
    bytes1 value;
    function f() public {
        bytes1 _ = abi.encodeWithSelector(0xC0606040526040520000, value);
        value = 65;
        throw 0;
    }
}
