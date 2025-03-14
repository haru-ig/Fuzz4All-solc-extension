pragma solidity ^0.8.0;
contract C is B {
    uint[] public values;
    function getValue(uint _index) public view returns (uint) {
        return values[_index];
    }
    function set(uint _value) public onlyAdmin {
        uint[2] memory b = [1,2];
        uint v = b[0];
        values[0] = _value;
    }
}
contract D is C {
    function change() public onlyAdmin {
        values[1] = values[1] + 1;
    }
}
contract E {
    function () external payable {}
}

pragma solidity ^0.8.0;
contract F is B {
    uint[] public values;
    function getValue() external returns (uint) {
        uint[] memory b = [1,2];
        uint v = b[0];
        bytes memory b2 = new bytes(2);
        bytes memory b3 = new bytes(3);
        return 0;
    }
    function set(uint _value) public onlyAdmin {
        bytes memory b1 = new bytes(2);
        bytes memory b2 = new bytes(3);
        bytes memory b3 = new bytes(10);
        uint bytesCount = (uint)b1.length;
    }
}
contract G {
    uint[] public values;
    function getValue() public view returns (uint) {
        uint[2] memory b = [1,2];
        uint v = b[0];
        bytes memory b2 = new bytes(1);
        bytes memory b3 = new bytes(3);
        return bytesCount;
    }
    function set2(uint _value) public onlyAdmin {
        uint bytesCount = 0;
    }
}
contract TestCaller is E, Test, G {
    constructor() public {
        uint value = values[0];
    }
}
