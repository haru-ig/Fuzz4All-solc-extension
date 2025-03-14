pragma solidity ^0.8.0;
contract E14
{
    uint _x;
    constructor (uint _x) public {
        _x = _x;
    }
    function divideAndLog (uint _x) public returns (bool){
        uint y_ = _x / 10;
        if (y_ == 10) {
            _x = 10;
        } else {
            _x = _x - 1;
        }
        return true;
    }
}

pragma solidity ^0.8.0;
contract E15
{
    uint constant _x = 1;
    constructor () public {
        _x = _x * 5;
    }
    function divideAndLog (uint _x) public returns (bool){
        if (_x == 0) {
            return true;
        }
        uint y_ = _x / 10;
        _x = _x - 1;
        return true;
    }
}

pragma solidity ^0.8.0;
contract E16
{
    uint _x;
    uint _y;
    constructor (uint _x, uint _y) public {
        _x = _x;
        _y = _y;
    }
    function divideAndLog (uint z) public returns (bool){
        uint _z_ = z / 10;
        _x = _x - 1;
        return _z_ > 10;
    }
}

pragma solidity ^0.4.24;
contract E17 {
    uint x;
    uint divmod(uint _x, uint _y) internal returns (uint, uint, uint){
        uint quo, quot = 0;
        uint d = _y;
        if (_y!= 0) {
            while (_x!= 0) {
                quo = (d >= _x)? (_y / _x) : (d
