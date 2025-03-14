pragma solidity ^0.8.0;
contract Test32 {
    function mutateTest() public {
        Test23 test = new Test23();
        test.modifyTest();
    }
}
contract Test23 {
    function modifyTest23() internal {
        dynArr[5] = 67;
    }
}

pragma solidity ^0.8.0;
contract Test {
    uint[] public dynArr;
    function modifyTest() public {
        dynArr[5] = 6;
    }
}
