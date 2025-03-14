pragma solidity ^0.8.0;
contract SolveAssembly4 {
    uint public x;
    function test() public{
      assembly {
        mstore(0x42, 0x12)
        mstore(0x41, x)
        mstore(0x1122424242, 0xf)
      }
    }
    modifier inc() {
      x += 1;
    }
}

interface IIncrementer {
    function modify(uint x) external;
}
contract Incrementer is IIncrementer {
    uint x;
    function modify(uint x_) public override {
        x = x_;
    }
}

pragma solidity ^0.8.0;
interface IIncrementer2 {
    function modify(uint x) external;
}
contract Incrementer2 is IIncrementer2 {
    uint public x;
    uint public y;
    function modify(uint x_) public override {
        x = (x_ + 4);
    }
}
