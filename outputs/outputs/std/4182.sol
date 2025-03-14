pragma solidity ^0.8.0;
contract Array {
    uint[] public x;
    function Set(uint x, uint y, uint z) public {x[3] = y; x[0] = z;}

    function Get(address a) public view returns (uint) {
        uint[5] memory x = GetArray(a);
        return x[3];
    }
    function GetArray(address a) public view returns (uint[5]) {
        uint length = 5;
        uint[] memory array = new uint[](length);


        for (uint i=1; i <= length; i++) { array[i] = uint(i); }
        return array;
    }

    function SetMulti(uint x, uint y, uint z)
        public
    {
        uint length = x.length;
        if (length == 0) {
            FillMulti(x, y, z);
            return;
        }
        uint[] memory array = GetArray(a);
        if (x.length < 5) {
            for (uint i=x.length; i <= 5; i++) {
                x[i] = x[i-1];
            }
        }
        if (x.length > 5) {
            for (uint i=x.length - 1 ; i >= 5; i--) {
               x[i] = x[i+1];
            }
        }
        x[0] = z;
        for (uint i = 0; i < length; i++) {
            array[i] = x[i];
        }
    }

    function FillMulti(uint[] memory x, uint y, uint z)
        public
    {
        uint length = (x.length - 1);
        uint[] memory array = GetArray(a);
        for (uint i=z; i <= 3; i++) {
            array[i] = x[i];
        }
        x[0] = y;
    }
}
