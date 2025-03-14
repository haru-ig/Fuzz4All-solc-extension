pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_Modifications_Mod {
    uint public x;
    uint public y;
    constructor() public {
        x = 2000;
        y = 6000 - 4 + 1;
    }
    function add(uint _y) public payable {
        x -= _y / y;
    }
    function update() public {
        x -= y / 5;
    }
    function destroy() public {
        x = 0;
        delete x;
    }
}


contract SemanticEquality_ArrayMutations34_Modifications_Mod_WithNestedStruct {
    uint public x;
    struct Y {
        uint public _value;
        struct YStruct {
            uint public _value;
        }
        YStruct public val;
    }
    constructor() public {
        x = 2000;
        Y memory y = Y(2000, Y.YStruct(1));
    }
    function add(uint _y) public payable {
        if (XStruct(x).y._value < 7000 - _y / y) {
            x += _y / y;
        }
    }
    function update() public {
        if (XStruct(x).y._value < 4000 - y / 5) {
            x += y / 5;
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_Modifications_Mod_WithNestedStruct {
    uint public x;
    struct Y {
        uint public _value;
        struct YStruct {
        }
        YStruct public val;
    }
    constructor() public {
        x = 2000;
        Y memory y = Y(2000, Y.YStruct());
    }
    function add(uint _y) public payable {
        if (XStruct(x).y._value < 7000 - _y / y) {
            x += _y / y;
        }
    }
    function update() public {
        if (XStruct(x).y._value < 4000 - y / 5) {
            x
