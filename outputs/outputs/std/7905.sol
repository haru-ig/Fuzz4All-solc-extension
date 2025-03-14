pragma solidity ^0.8.0;
contract Array_7 {
    uint64[] public array;
    address[] public adr;
    address[] public a1;
    uint64[] public a2;
    uint64[] public a3;
    uint64[] public a4;
    uint64[] public a5;
    uint64[] public a6;
    uint64[] public a7;
    uint64[] public a8;
    uint64[] public a9;
    uint64[] public a10;
    uint64[] public a11;
    uint64[] public a12;
    uint64[] public a13;
    uint64[] public a14;
    address[] public a15;
    address[] public a16;
    address[] public a17;
    uint64[] public a18;
    uint64[] public a19;
    address[] public a20;
    address[] public a21;
    uint64[] public a22;
    uint64[] public a23;



    function setArray(uint64[] storage a3, uint64[] storage a7) public {
        a3 = a3;
        a7 = a7;
    }


    function getArray(uint64[] memory a3, uint64[] memory a7) public {
        a3 = a7;
        a7 = a3;
    }






    function sum(uint64 elem, uint64 elem2,uint64 elem3, uint64 elem4, uint64 elem5,uint64 arg6) public view returns(uint) {
        uint sum = elem + elem2 + elem3 + elem4 + elem5 + arg6;
        return sum;
    }
}
