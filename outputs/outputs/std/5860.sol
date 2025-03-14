pragma solidity ^0.8.0;
interface SomeInterface {
    function m() external;
}
contract SomeContract {
    using SomeInterface forSomeInterface;
    uint private v;
    uint private x;
    bytes32 private hashKey;
    address[] private array;
    address[] private array2;
    mapping(uint => bool) private bool;
    mapping(uint => mapping(uint => bool[])) private boolArray;
    address private addressX;
    mapping(string => bool) private stringX;
    uint private uintX;
    SomeOtherInterface internal contractY;
    uint32 private uintY;
    function m() public {
        x += 1;
        v = x + 3;
        bytes32 myhash = keccak256(abi.encode("something"));
        hashKey = myhash;
        addressX = msg.sender;





    }

    function b() public {
        x += 1;
        addressX = msg.sender;





    }
}
