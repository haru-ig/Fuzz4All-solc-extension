pragma solidity ^0.8.0;
contract ExampleContract {
    uint256[] public array;
    uint256 value1;
    uint256 value2;
    uint256[] public newArray;
    function test(uint256 i) public {
        if (i == 0) {
            return;
        }
        value2 = value2 + 3;
        newArray.push(uint256(i - 2));
        newArray.push(uint256(i * 3 - 2));
    }
}
