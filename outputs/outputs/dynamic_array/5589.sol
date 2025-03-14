pragma solidity ^0.8.0;
contract Test00 {
    uint public a = 1;
    function setA(uint x) public {
        a = x;
    }
}


pragma solidity ^0.8.0;
contract Test13 {
    function y(address[] calldata) public {
        address[] memory a = new address[](1);
    }
}

pragma solidity ^0.8.0;
contract Test84 {
    uint[] x = [0, 1, 2];
    function z() public payable {}
    function () external payable {
        uint[3] memory a = calldata;
        uint[5] memory b = calldata;
    }
}

pragma solidity ^0.8.0;
contract Test85 {
    uint[] x = [0, 1, 2];
    constructor() {}
    modifier onlyWithEther() {
        require(msg.value == 0, "This function is only usable with ETH");
        _;
    }
    function f() public nonpayable onlyWithEther {}
    function g() public payable {}
    function h() public payable {
        uint[3] memory a = calldata;
        uint[5] memory b = calldata;
    }
}
