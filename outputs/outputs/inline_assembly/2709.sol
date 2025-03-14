pragma solidity ^0.8.0;
contract D {


    mapping(uint => uint) map0;
    mapping(uint => uint) map1;

    mapping(uint => uint) map2;



    uint a = 7, b = 2;


    uint _a;
    uint _b;

    function setAB(uint _aa, uint _bb) public {
        a = _aa + _bb;
    }

    function getA() public view returns(uint) {
        return a;
    }
    function getB() public view returns(uint) {
        return b;
    }
}
