pragma solidity ^0.8.0;
contract SymbolicEquality_AccessArrayWithNestedStructure {
    struct MyStruct {
        uint[] myArray;
    }
        constructor () public {
        MyStruct memory myStruct = MyStruct( [ 1, 3, 5 ] );
        MyStruct memory myStruct2 = MyStruct( [ 1, 3, 5 ] );
    }
        function m(MyStruct memory s) public {
        s.myArray.push( 9 );
    }
}
contract SymbolicEquality_AccessArrayWithNestedStructure_2 {
    struct MyStruct {
        uint[] myArray;
        uint myOtherNumber;
    }
        constructor () public {
        MyStruct memory myStruct = MyStruct( [ 1, 2, 3 ], 4 );
        MyStruct memory myStruct2 = MyStruct( s.myArray, 5 );
    }
}


```
