pragma solidity ^0.8.0;
contract Test40 {
    function g() public pure returns (int[] memory) {
        Test39 test39;
        int[] memory s = new int[](test39.g()[1].value);
        s[1] = 0x03;
        return s;
    }
}

contract Test41 {
    int[] myIntArray;
    function Test41() public {
        myIntArray[0] = 1;
    }
    function change() public {
        myIntArray[0] = 2;
    }
    function destroy() public {
        delete myIntArray;
    }
}
