pragma solidity ^0.8.0;
contract Modul{
    uint constant test2 = 98;
    uint const test3 = 100;
    uint constant test4 = test;
    uint constant test = 1000;
    uint constant test5 = test2 + test3 + test4;
    function solve() public pure returns (uint) {
        return test + test;
    }
}

contract C{
    string private text;
    function setText(string memory _text) public {
        text = _text;
    }
}

import './Modul.sol';
contract P{
    Modul constant mod = Modul(7);
    InlineAssembly inlineassembly;

    function setTest(uint x) public {
        inlineassembly.setText("A");

        mod.solve();

    }
}
