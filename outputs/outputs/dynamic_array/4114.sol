pragma solidity ^0.8.0;
contract Wafer {
    uint public _a_ = 0;
    uint private _b_ = 1;
    uint private _c_;
    uint[] storage A;
    uint[] storage B;
    uint256[32][] storage C;
    uint[] storage D;
    uint[] A222;
    uint[] A222222;
    uint[] memory B222;
    uint[] memory B222222;
    uint b22;
    uint b222;
    uint[8][32] b22222222;
    uint[8][32] memory b22222222;
    uint256[8][] storage C222;
    uint256[] B222;
    address[] bab;

    function f() public {
        A = [1, 2, 3];
        B = [1, 2, 3];
        D = [1, 2];
        A222 = [1];
        A222222 = [1];
        b22 = 2;
        b222 = 3;
        B222 = [1, 2, 3];
        B222222 = [1, 2, 3];
        b22222222[4][4] = 4;
        b22222222[4][4] = 6;
        uint b22222222_a = 8;
    }
}
