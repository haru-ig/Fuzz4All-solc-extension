pragma solidity ^0.8.0;
contract Moved {
    int public a;
    function printMultiples (uint a, uint b) public pure {
        a *= b;
    }
}

pragma solidity ^0.8.0;
struct Employee { address eaddress; uint salary; }
contract Moved {
    constructor (Employee memory _a) public {
        a = 1;
    }
    int public a;
}
