pragma solidity ^0.8.0;
contract Mutations{
    uint32 a;
    constructor(uint32 _a) {
        a = _a;
    }
    function multiplyByThree(uint32 _a) public {
        _a * 3;
    }
    function divideByOneAndFive(uint32 _a) public {
        _a * _a / 25000;
    }
}


pragma solidity ^0.8.0;

contract Comp {
    modifier onlyOwner() {
        require(msg.sender == address(0x720000000000000000000000000000000000000), 'onlyOwner');
        _;
    }
    uint256 public x;

    function Comp(uint256 initX) {
        x = initX;
    }

    function add(uint256 y) public {
        emit Added(x, y);
        x += y;
    }

    function subtract(uint256 y) public {
        emit Subtracted(x, y);
        x -= y;
    }

    function multiply(uint256 y) public {
        emit Multiplified(x, y);
        x *= y;
    }

    function divide(uint256 y) public onlyOwner returns (uint256) {
        emit Divided(x, y);
        if (y == 0) {
            return 0;
        }
        return x / y;
    }
}

contract Mutations {
    uint256 public x;

    constructor(uint256 initX) {
        x = initX;
    }

    function add(uint256 y) public onlyOwner {
        emit Added(x, y);
        x += y;
    }

    function subtract(uint256 y) public onlyOwner {
        emit Subtracted(x, y);
        x -= y;
    }

    function multiply(uint256 y) public onlyOwner {
        emit Multiplified(x, y);
        x *= y;
    }
    function divide(uint256 y) public onlyOwner {
        emit Divided(x, y);
        if (y == 0) {
            return;
        }
        return x / y;
    }
}

/* In the latest version of Solidity, inline assembly code can also perform arithmetic and logic operations. They're not part of the EVM.
