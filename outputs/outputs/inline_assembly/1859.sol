pragma solidity ^0.8.0;
contract MutatedX {
     uint256 internal a;
    function MutatedX() {
        a = x();
    }
    function x() public {
        a = 1;
    }
}

pragma solidity ^0.8.0;
contract VeryComplexMutatedX {
    uint256 internal x;
    uint internal flag;
    uint internal x1;
    uint internal x2;
    uint internal x3;
    uint internal x4;
    uint internal x5;
    uint256 internal x6;
    mapping(address => uint) public balances;
    constructor() {
        x = 1;
    }
    function x() public {
        x6 = x1 + x2;
    }
    function x7() public {
        flag = a();
    }
    function a() public pure {
        if (flag == 1) {
            x5 = balances[msg.sender];
        } else if (flag == 0) {
            x5 = balances[addr2(msg.sender)];
        }
    }
}
