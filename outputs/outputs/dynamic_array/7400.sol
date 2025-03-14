pragma solidity ^0.8.0;
contract Test34{
    uint i;
    uint[] public dynArr;
    function modifyTest() public {
        i = 0;
        dynArr = new uint[](10);
        if ( i == 1000 ) {
            dynArr.push(1000 + 1);
        }
        else {
            dynArr[1] = 1000 + 1;
        }
    }
}
