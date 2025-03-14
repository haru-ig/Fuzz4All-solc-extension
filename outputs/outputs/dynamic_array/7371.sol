pragma solidity ^0.8.0;
contract Test {
    uint[] public dynArr;
    function modifyTest() public {
        dynArr.push(3);
        dynArr[0]\=9;
    }
}

pragma solidity ^0.8.0;
contract Test {
    uint[] public dynArr;
    function modifyTest() public {
         dynArr.push([3,9,[1,3,5,7]]);
         dynArr.push(9);
    }
}
