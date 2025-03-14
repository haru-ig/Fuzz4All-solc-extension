pragma solidity ^0.8.0;
contract Test30071 {
    uint[][] internal dataArray;

    function f() public {
        dataArray.length++;
        dataArray[0].length++;
        dataArray[0][0].length++;
    }
    function setLength(uint[][] memory testPtr) {
        uint n = (100000);
        for(uint i=0; i < n; i++){

            address [] memory addressPtr;
            for(uint j = 0; j < 10; j++) {
                addressPtr.push(address(new uint[](0)));
            }
            testPtr.push(addressPtr);
        }
    }
}
