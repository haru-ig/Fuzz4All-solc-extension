pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_Modifications_Mod {
    uint public x;
    uint public y;
    constructor() public {
        unchecked {
            x = 2000;
            y = 6000 - 4;
        }
    }
    function add(uint _y) public payable {
        x -= _y / y;
    }
}

contract SemanticEquality_ArrayMutations34_Exceptions10_Basic_NoMod {
    int8 x;
    int16 y;
    constructor(int32 _x, int16 _y) public {
        x = int8(_x);
        y = _y;
    }
    function add(int8 _y) public {
        x += _y;
    }
}

contract SemanticEquality_ArrayMutations34_Exceptions10_Basic_NoMod {
    function x() public view returns (int32) {
        require(x > 0);
        return x;
    }
    function y() public view returns (int16) {
        require(y >= 0);
        return y;
    }
    function z() public view returns (int32) {
        return x;
    }
    function w() public view returns (int16) {
        return y;
    }
}

contract SemanticEquality_ArrayMutations34_Exceptions10_Basic_NoMod {
    struct MyStruct {
        int32 x;
        int16 y;
    }
    MyStruct x;
    constructor (int32 _x, int16 _y) public {
        x.x = _x;
        x.y = _y;
    }
    function add(MyStruct memory _y) public view returns (MyStruct memory) {
        require(x.x >= 0 && x.y >= 0);
        return x;
    }
}

contract SemanticEquality_ArrayMutations34_Exceptions10_Basic_NoMod {
    enum MyEnum {
        X, Y
    }
    MyEnum x;
    constructor (MyEnum _x) public {
        x = _x;
    }
    function add(MyEnum _y) public view returns (MyEnum) {
        return x;
    }
}

contract SemanticEquality_ArrayMutations34_Exceptions10_Basic_NoMod {
    function x() public view returns (MyStruct memory) {
        require(x == MyEnum.X);
