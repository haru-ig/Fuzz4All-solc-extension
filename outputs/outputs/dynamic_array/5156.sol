pragma solidity ^0.8.0;
contract Test31 {
    function f() public pure returns (uint8[10]) {
        uint8[10] memory a;
        return a;
    }
    function f2() public pure returns (uint8[10]) {
        uint8[10] memory a;
        return a.sub(1, 10);
    }
    function f3() public pure returns (uint8[10]) {
        uint8[10] memory a;
        for (uint i = 0; i < 10; i++) {
          a = a.add(1, 7);
        }

        return a;
    }
    function f4() public pure returns (uint8[10]) {
        uint8[10] memory a;
        for (uint i = 0; i < 10; i++) {
          a = a.add(1, 7);
        }

        for (uint i = 10 - 1; i >= 0; i--) {
          a = a.sub(1, 7);
        }
        return a;
    }
}
