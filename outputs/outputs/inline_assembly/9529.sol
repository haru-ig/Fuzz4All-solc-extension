pragma solidity ^0.8.0;
contract MyContract {
    uint public uinty;
    bytes public bytesy;
    uint[] public uintarrayy;
    bytes[] public bytesarrayy;
    enum MyEnum {
      E0,
      E1,
    }
    modifier IsNotNegativeOne(uint x) {
            require( x <= 1, "Negative One Is Not Allowed");
      _;
    }
    function foo() public {
       uinty = 10;
       uinty = uinty.add(IsNotNegativeOne(MyEnum.E0));
       bytesy = "mybytesy".bytes;
       bytesy[0] = "this is also ok";
       uintarrayy = [10, 20, 30];
       bytesarrayy = ["first", "second", "third"];

       emit ChangeToTrue(bytesy.length);
    }
}
