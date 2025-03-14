pragma solidity ^0.8.0;
contract Test2 {
    uint[] public dynArr;
    function modifyTest() public {
         dynArr.push(3);
         dynArr = dynArr.push(9);
         dynArr.push(21);
    }
}

pragma solidity ^0.8.0;
contract Test2 {
    uint[] public dynArr;
    function modifyDynArr() public {
         dynArr.push(3);
         dynArr.push(9);
    }
    function useDynArr() public {
         dynArr.push(9);
         dynArr[0] = 21;
    }
}
