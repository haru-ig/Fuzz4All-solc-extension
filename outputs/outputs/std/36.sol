pragma solidity ^0.8.0;
contract TestExample {
    function test(bytes32[] memory data) public {
        uint256 num = 444;
        uint8 a = 499;
        uint256 b = 253;
        bytes memory c = "234e83e883c928845286623e";
        bytes32[] memory x = [12, 2, 44, 6, 5, 9, 2345, 567, 689];
        bytes mem ret = Convert.tobytes2bytes8(data, num, a, b, c);
        bytes memory ret2 = "string";

    }
}
