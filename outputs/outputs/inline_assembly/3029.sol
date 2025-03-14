pragma solidity ^0.8.0;
contract C {
    uint constant max = 9223372036854775807;
    function setX(uint _x) public returns (uint) {
        uint a = uint(x);
        _x = 0;
        return a;
    }
}
pragma solidity ^0.5.0;
contract C {
    uint constant max = 9.223372e+308;
}
contract C {
    using InlineAssembly from './contract.sol';

    function setX(uint _x) public returns (uint) {
        uint a = uint(x);
        _x = 0;
        a = max;
        return a;
    }
    function getX() public view returns (uint) {
        uint n = uint(x);
        return n;
    }
    bytes32 constant x = '0x810b968787749599de92ff3d1c49e7a5c9ff069a96b060f7895d8ac4c73767bb';
}
