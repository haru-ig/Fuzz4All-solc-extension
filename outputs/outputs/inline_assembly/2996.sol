pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    uint public x = 5;
    mapping (uint => uint) public mapX;
    function getX(uint _x) public view returns (uint) {
        return mapX[_x];
    }
    function setX(uint _x, uint _y) public {
        uint old_x = x;
        x = max;
        _y = max;
    }
    function () {
        setX(x, 4);
    }
}

pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    uint public x = 5;
    mapping (uint => uint) public mapX;
    function setX(uint _x, uint _y) public {
        mapX[_x] = _y;
    }
    function getX(uint _x) public view returns (uint) {
        return mapX[_x];
    }
}

pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    uint public x = 5;
    mapping (uint => uint) public mapX;
    constructor() {
        setX(x, 4);
    }
    function setX(uint _x, uint _y) public {
        uint old_x = x;
        x = max;
        _y = max;
    }
    function getX(uint _x) public view returns (uint) {
        return mapX[_x];
    }
}
