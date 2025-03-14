pragma solidity ^0.8.0;
contract TestCaller{
    struct Data {
        bool flag;
    }

    struct Calldata {
        uint8 a;
        uint8 b;
        uint256 flag;
    }

    struct CalldataArray {
        uint8 array[4];
    }

    uint8[4] d;

    Constructor()public
    {
        Data memory d1;
        d1.flag = true;
        d[0] = d1.flag;

        d[1] = true;
        d[2] = false;
        d[3] = true;
    }

    Caller()public{
        call(data());
    }

    Calldata call(Calldata memory c) public view returns (uint8[2]){

        CalldataArray memory ca = c;
        return (ca.a, ca.b);

        Data memory data1;
        data1.flag = true;
        ca.flag = data1.flag;
        ca.a = 3;
        return (ca.flag, ca.a);
    }

    CalldataArray memory initCalldataArray(uint x, uint y) public returns (CalldataArray memory) {
        CalldataArray memory array = CalldataArray(x, y, false);

        return array;
    }

    Calldata callWithData(uint8 x, uint8 y) public view returns(uint8) {
        Data memory d1;
        d1.flag = true;
        d[0] = d1.flag;

        d[1] = true;
        d[2] = false;
        d[3] = true;

        Data memory data1;
        data1.flag = true;
        return (d[x] ^ y);
    }

    function data() public pure returns (uint8[2] memory) {
        uint8[2] memory result;
        result[0] = 1;
        result[1] = 2;
        return result;
    }
}
