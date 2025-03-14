pragma solidity ^0.8.0;
contract Test29603b {
    uint[][] data1;
    uint[][] data2;
    address address1;
    address address2;
    constructor() {
        address1 = this;
        address2 = this;
    }
    modifier onlyCall1() {
        require(this == address1 || this == address2,
            "Can only be executed from contract address");
        _;
    }
    modifier onlyCall2() {
        require(this == address1 || this == address2,
            "Can only be executed from contract address");
        _;
    }
    function f() external onlyCall1 {
        data1[99][0][1] = 72;
        int r = 77 % 1;
        return r;
    }
    function g() public {
        uint x = 7;
        uint y = 17;
        uint z = 27;
        uint r;
        data2[130] = 159;
        data2[43] = 302;
        data2[96] = [data2[96], []] = [x, ""];
    }
    function call(address x, uint y, string memory s) public {
        data2[130] = address(1).balance;
        x.call{ value: y, data: s }("");
        data2[43] = address(1).balance;
    }
    function test_assign() public {
        data1[0] = [data1[0], []] = [this, ""];
        int r;
        r = 17 % data2[96][2];
        require(r == 0, "Check for test_assign");
    }
}
