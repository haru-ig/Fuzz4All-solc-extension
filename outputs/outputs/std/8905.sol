pragma solidity ^0.8.0;
contract ExampleEnum8{
    enum MyEnum9 {
        First,
        Next
    }
    function myFunction(MyEnum9 x){
        if(x < MyEnum9.First){
            return;
        }
    }
}
