pragma solidity ^0.8.0;
contract B {
    uint bArray[5];
}

pragma solidity ^0.8.0;
contract C {
    function f(uint256[] memory b) public {
        b[5] = 1;
    }
}
