pragma solidity ^0.8.0;
contract Test18{
    mapping (uint => uint) public map;
    function callTest() public {
        map[_] = 1000;
    }
}

pragma solidity ^0.7;
contract Test23{
    uint i;
    uint[] [2] dynArr;
    function modifyTest() public {
        i = 0;
        if ( i == 1000 ) {
            dynArr.push(uint[] (1000));
        }
        else {
            dynArr[1][0] = uint (1000);
        }
    }
}
