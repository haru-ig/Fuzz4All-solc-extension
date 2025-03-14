pragma solidity ^0.8.0;
contract MutantContract {
    bool fFalse;
    uint256 fNum;
    uint256 fNum2;
    uint256 fNum3;
    uint256 fNum4;
    uint256 fNum5;
    constructor (uint256) public {
    }
    function g() public {
        bytes32 y;
        bytes32 x;
        bytes32 z;
        assembly {
            x := fNum
        }
        x = fNum2;
        c();
        fNum2;
    }
    function a() public pure {
    }
    function b() public pure {
    }
    function c() public pure {
    }
    function d() external pure {
    }
    function e() external pure {
    }
}
contract MutantContract2 {
    uint256 fNum;
    bytes32 fHash;
    constructor (uint256, bytes32) public {
    }
    function g() public {
        bytes32 y;
        bytes32 x;
        bytes32 z;
        assembly {
            x := fHash
        }
        b(x);
       c(x);
       b(x);
       d(x);
       fNum2;
    }
    function b(bytes32) public pure {
    }
    function c(bytes32) public pure {
    }
    function d(bytes32) public pure {
    }
}
