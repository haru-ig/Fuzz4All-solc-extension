pragma solidity ^0.8.0;
contract Test {
    modifier mod915() view external returns (uint) {
        uint x = read();

        _;
    }

    function read() public view returns(uint) {
        return 123;
    }
}
contract Test2 {
    modifier mod20() {
        uint x = Test().read();
        _;
    }

    function read() public view returns(uint) {
        return 123;
    }
}
