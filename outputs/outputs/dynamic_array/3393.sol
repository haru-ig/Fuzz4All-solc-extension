pragma solidity ^0.8.0;
interface I2d1Arrays {
    function f(uint[] memory) external returns (uint[] memory);
    function a(uint[][2] memory) external view returns (uint[][2] memory);
    function b(uint[][9][] memory) external view returns (uint[][][] memory);
    function c(uint memory arr[128] memory, uint memory arr2[64] memory, uint memory arr3[32] memory) external;
    function d(uint memory b1, uint memory b2, uint memory b3, uint memory s1, uint memory s2, uint memory s3) external;
    function e(uint[][2][] memory[12] memory) external returns (uint[][][][2][] memory);
    function f(uint[512][64][32] memory) external view returns (uint[512][64][32] memory);
    function g(uint[512][64,32] memory) external;
    function h(uint[1] memory) external;
    function i(uint[512][64,32] memory) external view returns (uint[1][64][32] memory);
    function j(uint[512][64,32] memory[3] memory) external;
    function k(uint[512][64,32] memory[5] memory) external;
    function l(uint[512][64,32] memory[3][3] memory) external;
    function m(uint[512][64,32] memory[5][5] memory) external;
    function n(uint[16][16] memory) external view;
    function o(uint[256] memory) external view;
    function p(uint[512][64,32] memory[7] memory) external view;
    function q(uint[60][0] memory, uint[60,60] memory) external;
    function r(uint[512,32] memory) external returns (uint[32] memory);
    function s(uint[60,60] memory, uint[240,48] memory) external;
}
