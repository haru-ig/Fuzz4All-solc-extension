pragma solidity ^0.8.0;
contract R2 {
    struct B {
        uint256 x;
        uint256 y;
    }
    uint256[] arr;

    function () public view {
        uint256 z = arr[0];
    }

    function f(B memory b) public pure {
        arr.push(1);
        uint256 a = b.x + b.x;

        B memory b2 = b;
        arr.push(2);
        uint256 x = b2.x + b2.x;
    }
}
