pragma solidity ^0.8.0;
interface ChildInterface {
    function f() external pure returns (uint256 n);
}

contract Parent {

    ChildInterface2 child2;
    ChildInterface child;

    constructor () public {
        child2 = ChildInterface2(child);
        child = ChildInterface(child2);
    }
}

contract Child is IChild1, IChild2 {


    function inherits_IChild1() public view returns (bool) {
        return true;
    }

    function inherits_IChild2() public view returns (bool) {
        return true;
    }

    uint8 private _v = 0;

    function testChild() public view returns (uint8) {
        return _v;
    }

    function IChild1_SetV(uint8 a) public {
        _v = a;
    }

    function IChild2_SetV(uint8 a, uint16 b) public {
        _v = a;
        b;
    }
}
