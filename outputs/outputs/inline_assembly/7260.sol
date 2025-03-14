pragma solidity ^0.8.0;
contract Solidity {
    function setI(uint newI) public {
        i = newI;
    }
    function getI() public view returns (uint) {
        return i;
    }
    uint public newI = 324;
    uint public immutable otherI = 200;
    uint public constant myConst = 42;
}

pragma solidity ^0.8.0;
contract Solidity {
    function f1(uint);
    function f2(uint);
}

pragma solidity ^0.8.0;

contract Solidity returns (bool) {

    uint x = 67;
    function f() public returns (uint) {
        if (x >= 37) {
            return 37;
        } else {
            return 93;
        }
    }
}
