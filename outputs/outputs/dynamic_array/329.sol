pragma solidity ^0.8.0;
 contract R5 {
    uint256[] public arr;
    function f() public {
        arr.push();
        uint256[] memory b = arr;
    }
}


pragma solidity ^0.8.0;
contract D0 {
    function g() external {
        uint256[] memory b = msg.data[0];
    }
}
