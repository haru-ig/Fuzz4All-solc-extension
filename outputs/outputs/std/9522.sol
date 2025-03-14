pragma solidity ^0.8.0;
contract  Mutate4 {
    function setarray3(address[][4] memory newaddressarray) public {
        addressarray3 = newaddressarray;
    }
    address[4][4] private addressarray3;
}


contract Mutate3 {
    function setarray2(uint16[] memory newaddressarray) public {
        addressarray2 = newaddressarray;
    }
    uint16[2] private addressarray2;
}
