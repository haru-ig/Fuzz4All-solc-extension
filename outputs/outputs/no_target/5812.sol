pragma solidity ^0.8.0;
contract C2 extends C3 {
    function setfoo(address caller) public {
        C1 c = new C1();
        bytes memory x;
        (x, ) = (c.foo(), );
        assembly {
          .case 0 {
               x := mload(add(0x40, x))
            }
        }
        assert(x == address(this));
    }
}
