pragma solidity ^0.8.0;
contract Simple {
    struct Mystruct {
        uint8 value;
    }
    function testMethod(Mystruct memory m) public pure {}
}
contract Another {
    struct Mystruct {
        uint8 value;
    }
    function testMethod(Mystruct memory m) public pure {}
}
contract Intra {
    function testMethod(Mystruct memory m) public pure {}
}
contract Interior {
    struct Mystruct {
        uint8 value;
    }
    function testMethod(Mystruct memory m) public pure {}
}
contract InteriorWithDifferentParameter {
    struct Mystruct {
        uint8 value;
    }
    function testMethod(Mystruct memory m) public pure {}
}


contract Main {
    function testMethod() public pure {}
}
contract Test {
    function testMethod() public pure {}
}
