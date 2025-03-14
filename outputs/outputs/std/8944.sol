pragma solidity ^0.8.0;
contract ExampleStruct11 {
    uint a;
    constructor (uint a_) {
        a = a_;
    }
    function getLength(ExampleStruct11 s) public view returns (uint) {
        return a;
    }
}
pragma solidity ^0.8.0;


contract ExampleStruct11 {

    uint8 version;
    uint8[] b;
    uint8[] c;
    constructor (uint8 v) public {version = v;}
    function getLength(ExampleStruct11 s) public view returns (uint8) {
        return a;
    }
}


pragma solidity ^0.8.0;
contract ExampleStruct11 {

    uint8 version;
    uint8[] b;
    uint8[] c;
    constructor (uint8 v) public {version = v;}
    function getLength(ExampleStruct11 s) public view returns (uint8) {
        return a;
    }
    function getLength(ExampleStruct11 s, uint8 i) public view returns (uint8) {
        return a;
    }
    function getLength(ExampleStruct12 s) public view returns (uint8) {
        return a;
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct11 {

    uint8 version;
    uint8[] b;
    uint8[] c;
    constructor (uint8 v) public {version = v;}
    function getLength(ExampleStruct11 s, ExampleStruct11 s2) public view returns (uint8) {
        return a;
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct11 {

    uint8 version;
    uint8[] b;
    uint8[] c;
    constructor (uint8 v) public {version = v;}
    function getLength(ExampleStruct11 s, ExampleStruct12 s2) public view returns (uint8) {
        return a;
    }
}
