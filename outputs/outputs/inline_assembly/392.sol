pragma solidity ^0.8.0;
contract M2 {
    assembly {
        mstore(0x20, 1)
    }

    function modify() public {
        if (mload(0x20)) {
            b = b*(mload(0x20));
        } else {
            b = 0;
        }
    }
}



pragma solidity ^0.8.0;
contract M2 {
    uint[3] public b;
    constructor() {
        b[0] = 1;
    }

    function divide() public {
        b[0] = b[0]-2*b[0];
    }

    function modify(uint index) public {
        b[index] = b[index]*(b[0] / 2);
    }

    function double() public {
        b[1] = b[0];
        b[0] = 1;
    }
}
