pragma solidity ^0.8.0;
contract Mutations {

    uint constant internal x = 5;
    uint constant internal y = 6;
    uint x;
    uint y;
    bytes memory o1;
    bytes memory o2;
    bytes memory b;
    bytes1[] memory b1;
    bytes memory b2;


    event log(uint8[] memory i, uint8[] memory o, uint _x, uint _y, uint _z);

    function() public {}
    function loga(uint8[] memory _i) public {
        o1 = encodeArray(o1, _i);
        emit log(_i, o1, x, y, z);
        bytes memory b3 = decode(o2, b2, x);
        o2 = encodeArray(b2, encodeBytes(o1, b3));
        emit log(i, o2, x, y, z);
    }
    function logb(uint8[] memory _i) public {
        emit log(_i, b2, x, y, z);
    }
    function log8(uint8 x) public {
        o1 = encodeBytes(o1, x);
        emit log(i, o2, x, y, z);
    }
    function logb1(uint8[] memory _i) public {
        emit log(_i, i, x, y, z);
    }

}
