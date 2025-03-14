pragma solidity ^0.8.0;
contract new {
    uint256 x;
    uint y = 10;
    uint constant z = 20;
    function f() public {
        x = 50 * (2 + y + z);
    }
}

contract newY1 {
    uint a;
    constructor(uint b) public {
        a = b / 2;
    }

    function f() public view returns (uint) {
        return max(a,5);
    }

}



pragma solidity ^0.8.0;
contract newR {

uint public w = 100;
uint public constant c = 200;
uint public z = w * c;

constructor() {}

function doSomethingPublic() public {
    require(z <= c, "bad stuff");
}

function doSomethingStatic() static public {

    uint42 x = 10;
    uint42 y = uint42(5);
    uint42 z;

    while (true) {
        assert(42 <= ++x && x <= y);

        z = x * y;
    }
}

}
