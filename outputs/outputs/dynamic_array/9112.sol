pragma solidity ^0.8.0;



contract ComplexExample {
    uint8[] private data;
    uint8 a;
    uint8 b;

    constructor(uint8 _a, uint8 _b) public {
        data = new uint8[](2);
        a = _a;
        b = _b;
    }


    function test(uint8[] memory _data) public view returns (uint8) {


        data = uint8[](2);

        data = address[](2);

        data = (_data.length!= 2);
        data[0] = a;
        data[1] = b;
        return data[0];
    }
}
