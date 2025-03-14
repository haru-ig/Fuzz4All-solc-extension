pragma solidity ^0.8.0;
contract CallerExample20 {
    function example20() public {
        uint[] memory input = [1, 2, 3, 4];
        uint [] memory result = CallerExample19.subtract(input, input);
        uint[] memory result2 = CallerExample19.subtract(input, [1,2,3,4]);
        uint a = result[0] + result2[0];
    }
}
