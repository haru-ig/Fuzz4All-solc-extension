pragma solidity ^0.8.0;
contract R5 {
    uint[] public arr;
    function f() public {
       uint[] memory b;
       for(uint i = 0; i < 10; i++){
        b[i] = 10;
       }
       b.push(12);
       require(b.length == 10, "1");
    }
}
