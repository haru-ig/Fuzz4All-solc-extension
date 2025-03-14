pragma solidity ^0.8.0;
contract MutatedSemantics {
    bytes32 private constant ETHER_NAME = keccak256("0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef");
    uint a;
    uint b;
    uint c;
    bytes32 public contract_address;
    bytes32 public _call;
    bytes32 private _code;
    uint public _call_counter;

    constructor() {
        a = 3;
        b = 2;
        c = 1;
        contract_address = 0x0;
        _call = 0x0;
        _code = 0x51af2658;
        _call_counter = 0;
    }
    function () public payable {}

    function test() public {
        a = 2;
        b = 1;
        c = 1;

        _code = 0x638b22f0;
    }
    fallback() external payable {}

    receive() external payable {
        _call_counter++;
        if(!address(this).balance.eq(0)){
            _code = 0x9b8f127d;
        }
        bytes32 random = keccak256(abi.encode(block.timestamp+block.coinbase, block.difficulty, block.number, block.gasprice, block.gaslimit, msg.value, now));
        contract_address = random;
    }


    function fallback() public {

    }
}
