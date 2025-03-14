pragma solidity ^0.8.0;
contract Mutate {
    uint[] storage x = [0,1];
    Array memory a;
    constructor() {
        a = new Array;
    }
    function mutateOne() external {
        x[1] = x[1].add(1);
    }
    function mutateTwo() external {
        x[2] = x[2].add(4);
    }
}

pragma solidity ^0.8.0;
contract Mutate2 {
    uint[] storage x = [0, 1];
    address[] storage s = new address[](2);
    uint[] memory y = new uint[](2);
    uint x1;
    uint memory y1;
    uint c1;

    constructor() {
        s[0] = address(this);
    }
    function mutateOne() external {
        x = x.append(x1).sort();
    }
    function mutateTwo() public {
        x1 = x1.add(1);
        x1 = x1.add(4);
        y1 = y1.add(5);
    }
    function returnX() public view returns (uint) {
        return x[0];
    }
    function returnS() public view returns (address) {
        return s[0];
    }
    function returnY() public view returns (uint) {
        return y[1];
    }
    function returnC1() public view returns (uint) {
        return c1;
    }
}

pragma solidity ^0.8.0;
contract Mutate3 {
    struct Memory {
        uint32 x;
        uint32 y;
    } memory memoryx = Memory(10, 27);
    Memory memory mem = memoryx;

    function setX() external {
        memoryx.x = 22;
    }
    function setX2() public {
        memoryx.x = 22;
        c1 = 10;
    }
    function setX3() public {
        setX2();
    }
}
