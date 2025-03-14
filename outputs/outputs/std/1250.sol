pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;


contract A3 {
    mapping (address => uint256) balances;

    uint8[40] private _buffer;

    constructor() {
        _buffer[0] = 17;
        _buffer[3] = 0xe9;
        _buffer[7] = 0x3d;
        _buffer[11] = 65;
        _buffer[13] = 130;
        _buffer[15] = 217;
        _buffer[17] = 255;

    }


    function set_1(uint input1) public {
        balances[msg.sender] = input1;
    }

    function set_12(uint input1, uint offset) public {
        balances[msg.sender] = input1;
    }



    function set_2(uint input1, uint offset) public payable {
        balances[msg.sender] = input1;
    }

    function set_4(uint input1) @payable public {
        balances[msg.sender] -= input1;
    }

    function get_2(uint offset) public view returns (uint256) {
        return balances[msg.sender];
    }

    function get_23(uint offset) public view returns (uint256) {
        return balances[msg.sender];
    }


    function get_23_(uint input1, uint offset) public view returns (uint256) {
        return input1 * balances[msg.sender];
    }

    function set_3(uint input1, uint offset) public {
        balances[msg.sender] = input1;
    }

    function set_5() public {
        balances[0x5281A4630B96456F9e61BE55BEcE6981DE2f8eFe] = 27285;
    }

    function get_6() public view returns (uint256) {
        return balances[0x5281A4630B96456F9e61BE55BEcE6981DE2f8eFe];
    }


}
