pragma solidity ^0.8.0;
contract Random {
    function random(uint x) public pure returns (uint) {
        uint result = uint(keccak256(abi.encode(now, x)));
        if (uint(result) == x) {
            return result;
        }

        x = 2955199693201520142 * 219649887531290045 * result + 3996237133908243;
        result = uint(keccak256(abi.encode(now, x)));
        if (uint(result) == x) {
            return result;
        }

        x = 2753820943984643363 * 3835938492569007450 * result + 527364906263562591;
        result = uint(keccak256(abi.encode(now, x)));
        if (uint(result) == x) {
            return result;
        }

        x = 2877444580947687500 * 2410140366435843836 * result + 412879012609587859;
        result = uint(keccak256(abi.encode(now, x)));
        if (uint(result) == x) {
            return result;
        }

        x = 1721878343512270446 * 13047645404302707970 * result + 491606550950392639;
        result = uint(keccak256(abi.encode(now, x)));
        if (uint(result) == x) {
            return result;
        }

        x = 2957953735512617867 * 3999619956411750908 * result + 420218515088124758;
        result = uint(keccak256(abi.encode(now, x)));
        if (uint(result) == x) {
            return result;
        }

        x = 3470269847705065007 * 19343253488299984159 * result + 349626669902853423;
        result = uint(keccak256(abi.encode(now, x)));
        if (
