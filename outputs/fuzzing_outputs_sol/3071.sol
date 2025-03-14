pragma solidity ^0.8.0;
contract Example20 {
    struct Example20S {
        uint8 a;
        address addr;
        uint8 b;
    }
}
contract Example1 {
    function f1() public pure { }
    function f2(uint8 arg) private pure returns (uint8 z) {
        z = arg.add(1);
    }
    function f3(uint8 arg) public pure returns (uint8 z) {
        z = arg.add(1);
    }
    function f4(uint8 arg) public payable pure returns (uint8 z) {
        z = arg;
    }
    function f5() public pure {
       if (block.timestamp == 1583311158*0x200000) {

           assembly {
               revert(0, 0, 0)
               return(0)
               __revert_without_return(0, 0, 0)
               __revert_without_return(0, 0, 0)
               __revert_without_return(0, 0, 0)
               __revert_without_return(0, 0, 0)
           }
        }
    }
    function f6(uint8 arg) public pure {

    }
    function f7(uint8 arg) public pure {

    }
    function f8(Example10.Example10S memory s, uint8 arg) public pure returns (uint8 z) {
        z = arg + 1;
    }
    function f9(Example20.Example20S memory s, uint8 arg) public pure returns (uint8 z) {
        z = arg + 1;
    }
    function f10(Example10.Example10S memory s, uint8 arg) public pure returns (uint8 z) {
        z = arg;
    }
    function f11(Example10.Example10S memory s, uint8 arg) public pure returns (uint8 z) {
       (z, ) = Example10.Example10S(s).add(tuple(s, arg, arg+1));
       (z, ) = Example10.Example10S(s).add(tuple(s, arg, arg));
    }
    function f12(Example10.Example10S memory s, uint8 arg) public pure returns (uint8 z) {
       (z, ) = Example10.Example10S(s).add(tuple(s, arg, arg));
    }
    function f13() public pure {

    }
    function f14(address from) public pure returns (uint8) {
        return 1;
    }
    uint8 public x;
    function f15(address from) public pure returns (uint8) {
        x;
        return 1;
    }
}
contract Caller {
    function f1(address s) public pure returns (uint8) {
        (
