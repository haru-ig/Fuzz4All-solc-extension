pragma solidity ^0.8.0;
contract Example9 {
    function subtract(uint x, uint y) public pure returns (uint) {
        x -= y;
        return x - 1;
    }
    function add(uint x, uint y) public pure returns (uint) {
        x += y;
        return x + 1;
    }
    function multiply(uint x, uint y) public pure returns (uint) {
        x *= y;
        return x / 2;
    }
}

pragma solidity ^0.8.0;
contract Contract1 {
    function contract1() {

    }
}


contract Contract5 is Contract1 {
    function contract5() {
        _fallback();
    }
}


contract Contract7 is Contract1 {
    constructor() {
        while(msg.value > contract7Balance()) {
            msg.sender.send(msg.value);
        }
    }
    receive() external payable {}
    function contract7Balance() public view returns (uint) {
        return address(this).balance;
    }
}

contract Contract8 is Contract1 {
    function contract8() {
        _call();
    }
    function _call() public view {

        msg.sender.send(msg.data);
    }
    receive() external payable {}
    function contract8Balance() public view returns (uint) {
        assembly {
            contract8_balance := mload(32)
        }
        return contract8_balance;
    }
}

contract Contract9 is Contract1 {
    fallback() external payable {}
}
