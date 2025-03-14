pragma solidity ^0.8.0;
contract Array {
    uint[] x;
    uint length;
    constructor()  public {
        length = 3;
        x = new uint[](3);
        x[0] = 3;
        x[1] = 7;
        x[2] = 1;
    }
    function getter() public view returns(uint) {
        return x[2];
    }
    function setter(uint _index, uint _value) public {
        x[2] = _value;
    }
    function max() public view returns(uint) {
        if (x[0] > x[1]) {
            return  x[0];
        } else {
            return  x[1];
        }
    }
    function min() public view returns(uint) {
        if (x[0] < x[1]) {
            return  x[0];
        } else {
            return  x[1];
        }
    }
    function sum() public view returns(uint) {
        uint x;
        for (uint i=0; i<length; i++){
            x += x;
        }
        return x;
    }
}
