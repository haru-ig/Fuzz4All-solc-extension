pragma solidity ^0.8.0;
contract Arrays5 {
    bytes public data;
    function func() public pure returns (bytes memory) {
        data = "data";
        return memoryData;
    }
    bytes[1] memory memoryData;
}
    bytes4[13] public nonpayableCalldata416;
    bytes4[6] public nonpayableCalldata402;
    bytes4[2][6] public nonpayableCalldata414;
    bytes4[4][3] public nonpayableCalldata412;
    bytes4[] public nonpayableCalldata4;
}

contract Test {
    function test() public pure {
        uint256[12][5] testArray;
        assert(testArray[4] > 0 || testArray[6] == 0) || (testArray[0] | 0)[12];
    }
}
