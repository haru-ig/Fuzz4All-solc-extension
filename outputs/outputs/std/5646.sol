pragma solidity ^0.8.0;
struct ArrayStruct {
    uint x;
    uint y;
    uint z;
}



pragma solidity ^0.8.0;
contract M9{
    struct ArrayStruct {
        uint x;
        uint y;
        uint z;
    }
    mapping(uint => ArrayStruct) public values;
    constructor() {}
    function setX(uint x) public {
        values[42].x = x;
    }
    function setF(uint f) public {
        values[42].z = f;
    }
    function setY(uint y) public {
        values[42].y = y;
    }



}

pragma solidity ^0.8.0;
contract M10 {
    uint public x;
    constructor() {
        x = 1367;
    }
}





pragma solidity ^0.8.0;
contract M11 {
    struct ArrayStruct {
        uint x;
        uint y;
        uint z;
    }
    mapping(uint => ArrayStruct) public values;
    constructor() {
        values[42].x = 42;
    }
    function setX(uint x) public {
        values[42].x = x;
    }
    function setY(uint y) public {
        values[42].y = y;
    }


}





pragma solidity ^0.8.0;
contract M12 {
    struct ArrayStruct {
        uint x;
        uint y;
        uint z;
    }
    mapping(uint => ArrayStruct) public values;
    constructor() {
    values.x = 1367;
    }
    function setX(uint) public {

    }
