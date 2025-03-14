pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 value1 = 11111;
    uint256[] memory values;
    uint256[4] memory valueArray;
    function incrementAndReturnArray() public {
        uint256[] memory x = new uint256[](2);
        x[0] = value1;
        x[1] = value1 + 1;
        values = x;
        valueArray = x;
    }
}
