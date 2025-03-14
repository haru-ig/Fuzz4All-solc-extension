pragma solidity ^0.8.0;
contract NewMultipleArguments {

    uint x;
    uint y;
    uint z;

    function setArgs(uint _x, uint _y, uint _z)
        public
    {
        x = _x;
        y = _y;
        z = _z;
    }

    function args() public returns (uint, uint, uint) {
        return (x, y, z);
    }
}
pragma solidity ^0.8.0;
contract MultipleArguments {
    function multipleArguments() public returns (uint x, uint y) {
        x = 1;
        y = 2;
        return (x, y);
    }
}
