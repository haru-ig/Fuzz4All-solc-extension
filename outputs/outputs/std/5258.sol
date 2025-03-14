pragma solidity ^0.8.0;
contract MyContract {
    uint constant myconst = 3 * 6 / 9;
    uint8 constant myuint8 = uint8((uint256(myuint) % 1 * 9) / 9);
    function f() public {
        myuint = myuint * myconst + myconst;
    }
}
pragma solidity ^0.8.0;
contract MyContract {
    uint constant myconst = 3 * 6 / 9;
    bytes18 constant mybytes18 = bytes18(uint256(myuint) / (9*9*9) ) % (9*9*9);
    function f() public {
        myuint = myuint * myconst + myconst;
    }
}
