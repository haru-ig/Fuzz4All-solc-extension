pragma solidity ^0.8.0;
contract G {
    struct S {
        int x;
        uint256 y;
        int z;
    }
    function h(S storage a) {

    }
    function h(S memory a) {

    }
    function h(uint[7]) {

    }
    function h(S storage v[9]) {

    }
    function h(S memory v[9]) {

    }
    function h(uint[[], 9]) {

    }
    function h(S storage v[9][,]) {

    }
    function h(S memory v[9][,]) {

    }
    function h(uint[[1000], 1000]) {

    }
    function h(S storage v[1000][,]) {

    }
    function h(S memory v[1000][,]) {

    }
    function h(uint[10, 10]) {

    }
    function h(S storage v[10, 10]) {

    }
    function h(S memory v[10, 10]) {

    }
    function h(uint[6, 6]) {

    }
    function h(S storage v[6, 6]) {

    }
    function h(S memory v[6, 6]) {

    }
    function h([[1], 1]) {

    }
    function h([[1], 1]]([1000], 1000)) {

    }
    function h([[1000], 1000]]) {

    }
    function h([[1], 1] memory v) {

    }
    function h([[1], 1] memory v[[1000], 1000]]) {

    }
    function g(int[3]) {

    }
    function g(int[3]] memory v) {

    }
    function g(int[4]) {

    }
    function g(int[4] memory v) {

    }
    function g(int[5]) {

    }
    function g(int[5] memory v) {

    }
    function g(int[6]) {

    }
    function g(int[6] memory v) {

    }
    function c(uint[6], uint[4], address[6]) {

    }
    function c(uint[6 memory], uint[4 memory], address[6 memory]) {

    }
    function d(int[6][6][6]) {

    }
    function d(int[6][6][6], int[6][6][6] memory v) {

    }
