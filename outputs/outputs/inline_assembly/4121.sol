pragma solidity ^0.8.0;
contract Modifiers {
    uint constant x = 1e12;
    function test (uint x, address) public {
        assembly {


            x := add(x, 32)
        }
    }
}



pragma solidity ^0.8.0;
contract Modifiers {
    uint public x;
    constructor (uint _x) public {
        x = _x;
    }
    function test (uint x, address) public {
        assembly {


            x := add(x, 32)
        }
    }
}
