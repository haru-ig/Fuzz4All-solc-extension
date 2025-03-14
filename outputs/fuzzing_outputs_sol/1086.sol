pragma solidity ^0.8.0;
contract ComplexMutation3 {
    struct Foo3 {
        uint256 myVar3;
        uint256 myVar1;
    }

    Foo3 foo3 = Foo3(1, 2);
    foo3.myVar1 = 0;
    foo3.myVar3 = 1;

    address payable fallback(address ) public payable {
        msg.sender.sendValue(msg.value);
    }
}
