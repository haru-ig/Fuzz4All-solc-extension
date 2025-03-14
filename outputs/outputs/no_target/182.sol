pragma solidity ^0.8.0;
contract Test {

    enum myEnum {
        value0, value1, value2, value3
    }

    uint public x;
    assembly { x := 3 ether }
    function set() public { x = 2 ether; }
    function get() public view returns (uint){ return x-2; }

    uint public y;
    function mytest(uint y) public{
        emit myevent(y);
        emit myevent(uint(x^1));
        emit myevent(uint16(x^1));
        emit myevent(uint.min(x));
        emit myevent(address(this));
    }

    event myevent(myEnum e);

}
pragma solidity ^0.8.0;

contract Test {
    uint public z;
    function set() public { z = 5; }
    function get() public view returns (uint){ return z; }
}
contract Test2 is Test {
    function get() public{ assert(false); }
    constructor() public {
        set();


        assert(z >= 4);
    }
}
