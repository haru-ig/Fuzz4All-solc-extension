pragma solidity ^0.8.0;
interface IFoo {
    function setID() public;
}
contract Foo is IFoo {
    uint id;
    uint private counter;
    function setID() public {
        id = 1;
        counter++;
    }
}
