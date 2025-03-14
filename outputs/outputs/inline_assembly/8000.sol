pragma solidity ^0.8.0;
contract MultipleArguments2 {
    uint x = 0;
    uint y = 1;
    uint z = 2;
    function multipleArguments2() public view returns(uint, uint)  {
        return (x, y);
    }
    function multipleArguments2Set(uint _c1, uint _c2) public returns(uint, uint) {

        uint _c3;
        if (_c1 * _c2 == _c3) {
            x = _c3;
            return (x, y);
        } else {
            return (x, (y!= 0? y : 1));
        }
    }
}
