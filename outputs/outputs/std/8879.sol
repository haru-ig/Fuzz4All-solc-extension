pragma solidity ^0.8.0;

contract ExampleStruct5 {


    struct MySimpleStructuredStruct{
        address fieldOne;
        bytes8 fieldTwo;
        string fieldThree;
    }

    modifier restrictedToSelf(){
        if (msg.sender == address(this)){
            _;
        }
    }
    function MySimpleStructuredStructFunction(address one, bytes8 two, string memory three) public {
        MySimpleStructuredStruct memory memoryStruct = MySimpleStructuredStruct({
            fieldOne : one,
            fieldTwo : two,
            fieldThree : three
        });
    }
    function MySimpleStructuredStructReadFunction() public restrictedToSelf() view returns (address addressOne, bytes8 twoOfThree) {
        return (myMemoryStruct.fieldOne, myMemoryStruct.fieldTwo);
    }
    bool myBool = true;




    address myMemoryAddress;
    MySimpleStructuredStruct memory myMemoryMemStruct;


    function MySimpleStructuredStructUpdateReadWriteFunction(address one, bytes8 two, string memory three) public {
        myBool boolValue = true;
        myBool = boolValue;
    }
}
