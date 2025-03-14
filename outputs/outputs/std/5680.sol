pragma solidity ^0.8.0;
contract M12{
    uint constant a = 100;
    constructor (uint _x, uint _y) public {x[_x] = true; z = _x + _y;}

    constructor (uint _x, uint _y, uint _z) public {x[_x] = true; x[_z] = true; y = _x + _y; z = _z;}

    uint test (uint _x, uint _y) private pure returns (uint) {return (_x >= _y)? _x : _y;}
    uint public f;
    function mutate () private {x[a] = true; f = test(100,1)}
}
