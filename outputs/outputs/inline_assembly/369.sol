pragma solidity ^0.8.0;
contract M8 {
    function setB(uint x) public {
        address payable receiver = address(uint160(x));
        receive(receiver, 1);
        b = 1;
    }
    function receive(address user_, uint x) public {
        emit NewBalance(user_, x);
    }
    event NewBalance(address user, uint amount);
}


pragma solidity ^0.8.0;
contract M9 {
    uint b;
    constructor() {
        b = 1;
    }
    function setB(uint x) public {
        b = b + x;
    }
    function divide(uint x) public {
        b = b-(uint((x-2)/x))*x;
    }
    function modify(uint x) public {
        b = b + x * x;
    }
}
