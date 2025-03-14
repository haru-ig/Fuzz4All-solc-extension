pragma solidity ^0.8.0;
contract ModifierTest {
    uint public x;

    function modifier no() {
        x++;
        _;
    }

    function no() public view no {
        x += 7;
    }
    constructor() {
        x = 1;
        x += 3;
    }
}

pragma solidity ^0.8.0;
contract GenericContract {
    uint public counter;

    constructor () {
        counter += 5;
    }

    function method1() public pure returns (uint) {
        return counter;
    }

    function method2() public returns (bool) {
        return true;
    }
}
