pragma solidity ^0.8.0;
contract two {
    uint pub x;
    constructor (uint _x) public {
        x = _x;
    }
    function getX() public view returns(uint)
    {
        return x;
    }
}
contract five {
    event LogTwo(uint);
    function () public {
        emit LogTwo(2 + x);
        throw;
    }
    uint x;
    function setX(uint _x) public {
        x = _x;
    }
}
