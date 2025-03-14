pragma solidity ^0.8.0;
contract Mutated2 is Mutated {

    function setXto12(uint _x) public {
        x = _x;
        emit XSet(_x);
    }
    function setXto2(uint x) public {
        x = _x + x;
        emit XSet(x);
        emit XSet(INITIAL_X + x);
    }
    function getX() public view returns (uint256) {
        uint256 z = x;
        return z;
    }
}

pragma solidity ^0.8.0;
contract Mutated3 is Mutated {

    function setXto12() public {
        x = 42;
    }
    function setXto2() public {
        x = 20;
        emit XSet(INITIAL_X + x);
    }
    function getX() public view returns (uint256) {
        uint256 z = x;
        return z;
    }
}
contract Mutated4 is Mutated2, Mutated {

    function setXto12() public {
        x = 42;
        emit XSet(x);
    }
    function setXto2() public {
        x = INITIAL_X + x;
    }
    function getX() public view returns (uint256) {
        uint256 z = x;
        return z;
    }
}

contract Mutated5 is Mutated, Mutated4, Mutated3 {
    function mutatedSet(uint256 _x) public {
        x = _x;
        emit XSet(_x);
        emit XSet(x);
    }
    function mutatedGetX() public view returns (uint256) {
        uint256 z = x;
        if (z == INITIAL_X) {
        return x;
        }
        return z;
    }
}
contract Mutated6 is Mutated5 {
    constructor(uint256 x_) public { setXto12(x_); }
    function mutatedGetX() public view returns (uint256) {
        uint256 z = x;
        if (z == INITIAL_X) {
        return x;
        }
        return z;
    }
}
contract Mutated7 is MMutated {
    function mutatedSet(uint256 _x) public {
        x = _x + 7;
        return _x;
    }
    function mutatedGetX() public view returns (uint256) {
        uint256 z = x;
        if
