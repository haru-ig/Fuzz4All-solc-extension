pragma solidity ^0.8.0;
contract MutatedSolidityV2 {

    uint public x;
    uint public y;
    uint public z;
    constructor() public {
    }
    modifier withModifyX() {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
        _;
    }
    function modifyX() public withModifyX { }
    function test() public {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
    }
}

pragma solidity ^0.8.0;
contract MutatedSolidityV3 {

    uint public X;
    uint public Y;
    uint public Z;
    constructor() public {
    }
    function modifyX() public { X = 2; }
    modifier withModifyY() only withModifyX public {
        Y = 2*X + 3;
        Z = 2*X + 3 + 4*Y;
        _;
    }
    function modifyY() public withModifyY { }
    function test() public {
        withModifyX{ X = 3; }
        withModifyY;
    }
}

pragma solidity ^0.8.0;
contract Mutated
