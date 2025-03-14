pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample51 is MixedContactsExample50{
    event MyEvent(uint256);
    uint256 public constant my_state = 0;
    function start() public {
        MyEvent(my_state);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample52 {
    struct A{
        uint f1;
    }
    struct B{
        uint f2;
    }
    A a;
    function test() public {

        B b;

        B.f1;
    }
    function setFB(uint h, uint f2) public{
        B b;
        b.f2 = f2;
        a.f1 = h;
    }
}
