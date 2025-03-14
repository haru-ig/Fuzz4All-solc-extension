pragma solidity ^0.8.0;
contract Test2 {
    uint[] public dynArr;
    function modifyTest(uint x) public {
        dynArr[1] = x;
    }
}

pragma solidity ^0.8.0;
contract Test3 {
    uint[] public dynArr;
    function modifyTest(uint x) public {
        dynArr[0] = x;
    }
}
