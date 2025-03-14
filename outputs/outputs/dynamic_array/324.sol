pragma solidity ^0.8.0;
contract R4 {
    struct C {
        uint256 a;
        uint256 b;
    }

    C[] memory arr;
    function f() public {
        arr.push(C({b:0}));
        C[] memory b = arr;
    }
}
