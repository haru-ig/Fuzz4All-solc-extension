pragma solidity ^0.8.0;
library L {
    function testFunction() internal pure returns (uint[][][2] memory) {
        return [
            [[]],
            [[]],
            [[],[0, 1]]
        ];
    }
}
