pragma solidity ^0.8.0;
contract Test73 {
    struct MyStruct {
        int256 x;
    }
    MyStruct[] myArray;
    address mySigner;
    event NewArrayCreated(MyStruct[] array);
    constructor() public {
        myArray = new MyStruct[](1);
        myArray[0].x = 1;
    }

    function add() public pure {
        mySigner = msg.sender;
    }

    function fill(int256 value) public pure {
        num2 += 1;
        modify();
        myArray = new MyStruct[](1);
        myArray[0].x = value;
    }
    function modify() public pure {
        myArray[0].x++;
    }
    function test(MyStruct[] memory array) public pure returns(MyStruct) {
        return array[0];
    }
    function test2() public pure returns(MyStruct) {
        return test(myArray);
    }
    function read(contract myContract, MyStruct[] storage a, uint i) public pure {
        myContract.test2();
    }

}
