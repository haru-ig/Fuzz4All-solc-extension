pragma solidity ^0.8.0;
contract Test67 {
    struct Test {
        uint256[] arr;
    }

    function z() public {
        Test storage t = Test({ arr:[1,2,3,4,5,6,7,8,9,10]} );
        t.arr[2]++;
    }
}
