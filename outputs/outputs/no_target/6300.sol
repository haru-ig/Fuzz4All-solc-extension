pragma solidity ^0.8.0;
contract C {
    address payable a;
}
contract MyContract {
    function get() public pure returns (uint) {}
    function set(uint) public {
        uint i = 0;
    }
    function call1(uint) public payable {}
    function call2(uint) public payable returns(uint) {}
    function call3(uint) public payable returns(address) {}
}
contract C {
    function get() public address payable returns (uint) {}
    function set(uint) public {
        uint i = 0;
    }
}
contract C {
    function get() public pure returns (uint) {}
    function set(uint) public {
        uint i = 0;
    }
}
contract C {
    uint8[2] a;
}
