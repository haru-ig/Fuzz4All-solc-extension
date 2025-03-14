pragma solidity ^0.8.0;
contract Main {
    int a;
    int[] b;
}
contract Mutant {
    function g() {
        function h() {
            Main main;
            main.a = 0;
            main.b.length;
        }
    }
}
