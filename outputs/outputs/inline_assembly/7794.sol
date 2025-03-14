pragma solidity ^0.8.0;
contract L1 {
    event Changed(uint indexed _x);
    event Moved(uint);

    function trigger(uint _x) public {
        emit Changed(_x);
        emit Moved(_x + 2);
    }

    uint change() public view returns (uint256) {
        change_local();
        emit Change(1);
        return 1;
    }
    function change_local() public returns (uint256) {
        emit Change(0);
        emit Moved(0);
        return 0;
    }
}
library L2 {
    event Changed(uint indexed _x);
    event Moved(uint);
    constructor() {
        emit Changed(0);
        emit Moved(0);
    }
    function trigger(uint _x) public {
        emit Changed(_x);
        emit Moved(_x + 2);
    }
    function change_local() public returns (uint256) {
        emit Changed(1);
        emit Moved(0);
        return 1;
    }
    function change() public view returns (uint256) {
        emit Change(2);
        return 2;
    }
    function change2(uint _x) public view returns (uint256) {
        emit Change(_x);
        emit Moved(_x + 2);
        return _x + 3;
    }
}
contract L12x is L1, L2 {
    uint public constant test = 10;
    uint public constant test2 = 20;

    mapping (uint => uint) public values;

    event Change(uint newValue);

    constructor() public {
        value(0);
    }

    function value(uint _value) public {
        mapping (uint => uint) storage tmp;
        x[0] = _value;
        values[0] = _value;
    }

    function test_modifier() private returns(uint x) {}
    function test2_modifier() public view returns(uint x) {}

    function add() public {
        value(10);
    }

    function add2() public view returns(uint x) {
        test = 10;
        test2 = 20;
        return 10 + 20;
    }

    function set_test2_in_modifier() public view returns(uint x) {
        x = test + test2;
    }

    function test_modifier2() private returns(uint x) {
        x += test2;
    }
}
