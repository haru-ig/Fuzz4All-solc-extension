pragma solidity ^0.8.0;
contract Call {
    function foo(uint x, uint y) public payable {
      x += y;
    }
}


pragma solidity ^0.8.0;
contract ReceiveFallback {
  uint public somedata;
  constructor() {
    somedata += 1;
  }
  receive() external payable {
    _;
  }
}






pragma solidity ^0.8.0;

contract Mutate {
    function pay(uint x, uint y) public payable {
       x += y;
    }
}


pragma solidity ^0.8.0;

contract Call {
    function foo(uint x, uint y) public payable {
    x += y;
    emit Emit1(x, y);
    emit Emit2(x, y);
    emit Emit3(x, y);
    emit Emit4(1, 1);
    emit Emit5(x, y);
    emit Emit6(x, y);
    emit Emit7(x, 1);
    emit Emit8(x, y);
    emit Emit9(x, y);
    emit Emit10(x, y);
    emit Emit11(x, y);
    emit Emit12(x, y);
    emit Emit13(x, y);
    emit Emit14(x, 1);
    emit Emit15(x, y);
    emit Emit16(x, y);
    emit Emit17(x, y);
    emit Emit18(x, y);
    emit Emit19(x, 1);
    emit Emit20(x, y);
    emit Emit21(x, y);
    emit Emit22(x, y);
    emit Emit23(x, 1);
    emit Emit24(x, y);
    emit Emit25(x, y);
    emit Emit26(x, y);
    emit Emit27(x, y);
    emit Emit28(x, y);
    emit Emit29(x, y);
    emit Emit30(x, 1);
  }

    function emit1(uint x, uint y) public {
         emit 1(x, y);
    }

    function emit2(uint x, uint y) public {
       emit 2(x, y);
    }
    function emit3(uint x, uint y) public {
      emit 3(x, y);
    }

    function emit4(uint x, uint y) public {
      emit 4(x, y);
