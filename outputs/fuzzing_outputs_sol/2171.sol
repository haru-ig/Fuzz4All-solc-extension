pragma solidity ^0.8.0;
contract Mutater334_2 {
    address payable public payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    receive() payable external {
        payee;
    }
    receive() external payable {
    }
}

pragma solidity ^0.8.0;
contract Mutater334_3 {
    address payable public payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    receive() external payable {
        revert("Payee has insufficient gas");
    }
}

pragma solidity ^0.8.0;
contract Mutater334_4 {
    address public payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    receive() payable external {
        payee;
        bool(payee);
    }
}

pragma solidity ^0.8.0;
contract Mutater334_5 {
    function f () public pure returns(uint8)  {return 0x12;}
    function g() public pure returns(uint256) {
        uint8 z = f();
        return uint256(z);
    }
}
