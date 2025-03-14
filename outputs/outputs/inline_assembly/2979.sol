pragma solidity ^0.8.0;
contract C {
    uint x = 8;
    function setX(uint _x) public {
        x = _x + 1;
    }
    function getX() public view returns (uint) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint x = 8;
    function getX() public view returns (uint) {
        return x;
    }
    function setX(uint _x) public {
        x = _x;
    }
}
