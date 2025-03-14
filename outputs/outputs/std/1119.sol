pragma solidity ^0.8.0;
contract Array {
    uint[] private arr;
    function push() public {
        uint x = arr.push(42);
        uint y = arr[x];
        assert(y == 42);
    }
    function getFrom(uint x) public view returns(uint){
        return arr[x];
    }
    function setIn(uint x, uint y) public {
        arr[x] = y;
    }
}
contract Convert {
    function toHexString(uint x) public pure returns(string memory h) {
        bytes memory ba = new bytes(2);
        ba[0] = byte(uint8(x));
        ba[1] = byte(uint8(x >> 8));
        h = abi.encodePacked("0x", bytes(ba));
    }
}
contract Math {
    function abs(int x) public pure returns(uint){
        uint a = uint(x);
        return a < uint(-x)? a-2**(uint256(-255))-1 : a;
    }
    function pow(uint x, uint y) public view returns(uint){
        uint z = x;
        for(uint i = 1; i < y; i++){
            z = z*x;
        }
        return z;
    }
}
contract Memory {
    function addAndReturn(uint[] array) public view returns(uint[], uint){
        uint[] memory newArr = new uint[](2);
        for(uint i=0; i<array.length; i++){
            newArr = array.add(2*array[i]);
        }
        uint[] memory y = new uint[](2*array.length);
        y[0] = 0;
        y[1] = 0;
        for(uint i=0; i<array.length; i++){
            for(uint j=0; j<2*array.length; j++){
                y[2*j+i] = array[i];
            }
        }
        return (y, 2*array.length);
    }
    function addAndReturn2(uint[] memory array) public view returns(uint[], uint){
        uint[] memory newArr = new uint[](2);
        for(uint i=0; i<array.length; i++){
            newArr = array.add(2*array[i]);
        }
        uint[] memory y = new uint[](2*array.length);
        y[0] = 0;
        y[1] = 0;
        for(uint i=0; i<array.length; i++){
            for(uint j=0; j<2*array.length; j++){
                y[2*j+i] = array[i];
            }
        }
        return (y, 2*array.length);
    }
}
contract MultiplyPrecision {
}
