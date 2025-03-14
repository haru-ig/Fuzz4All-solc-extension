pragma solidity ^0.8.0;
contract Test39 {
    function g() public pure returns (int[] memory) {
        int[] storage x = new int[](4);
        x[0] = 42;
        x[1] = 42;
        x[2] = 42;
        x[3] = 42;
        return x;
    }
}

contract Test40 {
    function g() public pure returns (int[] memory) {
        int[] memory x = g();
        x[1] = 42;
        return x;
    }
}

pragma solidity ^0.8.0;
contract Test41 {
    function g() public pure returns (int[] memory) {
        int[] memory x = g();
        int[] memory y = new int[](x.length);
        for (uint i = 0; i < x.length; i++) {
          y[i] = x[i];
        }
        return y;
    }
}
