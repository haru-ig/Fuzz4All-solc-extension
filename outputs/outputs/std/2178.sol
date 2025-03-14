pragma solidity ^0.8.0;

contract GetSet {
    uint public maxFoo = 7;
    uint public maxBar = 8;
    uint[] public fooArray;
    uint[] public barArray;

    constructor() {
        for (uint i=0; i<8; ++i) {
            fooArray.push(0);
            barArray.push(0);
        }
    }

    function setMaxFoo() external {
        maxFoo = 11677;
        maxBar = 2036;
        fooArray[0] = maxFoo;
        barArray[0] = maxBar;
    }

    function setFoo(uint _foo) external {
        if(Foo(_foo).canSet()) {
            fooArray[_foo] = _foo;
        }
    }

    function getFoo() public view returns (uint) {
        uint val = fooArray[0];
        return val;
    }

    function maxFoo() public view returns (uint) {
        uint val = fooArray[0];
        return val;
    }

    function maxBar() public view returns (uint) {
        uint val = barArray[0];
        return val;
    }

    function setMaxBar(uint _bar) external {
        maxBar = uint(_bar);
        barArray[0] = maxBar;
    }

    function setBar(uint _bar) external {
        if(Bar(_bar).canSet()) {
            barArray[_bar] = _bar;
        }
    }

    function getBar() public view returns (uint) {
        uint val = barArray[0];
        return val;
    }
}
