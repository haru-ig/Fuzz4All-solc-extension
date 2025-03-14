pragma solidity ^0.8.0;
contract Modul {
    function solve() public pure {
        assembly {
            div r := div(test, test3)
            r := add(r, test3)
            div_(r, test2, r)
            sub r, test2
            eq r, _


        }
    }
}
