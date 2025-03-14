pragma solidity ^0.8.0;
contract Test6 {
    uint256  _value = 321;
    uint256[] _mem = new uint256[](1);
    function check(uint x) public {
        x = 12;
        _value = 12;
    }
}

pragma solidity ^0.8.0;
contract Test6 {
    uint256  _value = 321;
    uint256[] _mem = new uint256[](1);
    function check(uint x) public {
        x = 12;
        _value = 12;
        delete _mem[1];
    }
}
