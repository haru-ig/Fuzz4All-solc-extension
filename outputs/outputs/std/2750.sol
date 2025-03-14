pragma solidity ^0.8.0;
contract MutantArithmetic
{
    uint128 x;
    uint8 Y;
    uint256 z;
    uint256 A;
    uint256 B;
    bytes32 C;
    address D;
    address E;
    address F;
    address G;
    address H;
    uint256 I;
    uint256 J;
    string L;
    string M;
    uint8 N;
    uint8 O;
    uint256 P;
    uint256 Q;
    uint256 R;
    uint8 S;
    uint256 T;
    uint256 U;


    constructor(uint128 p_x_, uint8 p_Y_, uint128 p_z_, uint128 p_A_, uint128 p_B_, bytes32 p_C_, uint8 p_D_, uint256 p_E_, uint8 p_F_, uint256 p_G_, uint256 p_H_)
    {
        x = p_x_;
        Y = p_Y_;
        z = p_z_;
        A = p_A_;
        B = p_B_;
        C = p_C_;
        D = address(0x00);
        if(p_F_ == 0) {D = address(0x00);}
        E = uint192(0x00);
        I = uint128(0x00);
        J = uint128(keccak256(abi.encodePacked(p_F_,p_D_,p_A_,I,D,J)), 0x00);
        L = "hello";
    }
}
