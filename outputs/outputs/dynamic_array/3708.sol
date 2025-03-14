pragma solidity ^0.8.0;
contract D2 {
    uint16 public a = 1;
    address[] memory b;
    constructor(uint16 _b) public {
        a = _b;
        b = new address[](2);
    }
    function f(uint8 i) public {
        if (a > 2) {
            b[i] = msg.sender;
        }
    }
}
pragma solidity ^0.8.0;
contract E {
    address[] public a;
    constructor(uint16 a) public {
        a.push(address(this));
    }
}
