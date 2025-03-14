pragma solidity ^0.8.0;
address payable addr;
contract Example {
    uint x = 0;
    uint y = 0;
    uint z;
    function simple(uint _x) public {
        require(_x == 0, "Input must be 0");
        z = _x;
        y = _x + x;
        addr = addr.add(address(newExample));
    }
}
contract newExample {
    uint x = 0;
    uint y = 0;
    uint z;
}
contract Contract{
    bytes32 private constant FEE = 0xFEeFEEeFfEeeeeEFeeF;
    bytes public data;
    string public input;
    string public output;
    address payable addr;
    event event1(address payable value);
    event event2(uint value);
    mapping(uint => uint) public inputToOutput;
    constructor(){

        addr = 0x12222;
        data = abi.encode(address(this), bytes32(123));
        data = abi.encodePacked(address(this), bytes32(3.14));
        data = abi.encodePacked('hi', '!');


        input = bytes(abi.encodeWithSignature('0x907d342abdc16d022fb727538d028d9bb6164b32e7d5b3f3007dd1a6d7fefc56',data)).substring(0,814594496+814593292);
        emit event1(addr);
        emit event2(232);
    }
    function test() public payable{
        require(msg.value == FEE, 'Test fee mismatch.');
        inputToOutput[233] = 777;
        inputToOutput[234] = 2343;
        uint counter = 1;
        for (uint256 i = 235; i <= 2368; i += (counter += 1)) {
            inputToOutput[i] = i;
            uint inputToOutputLength = bytes(abi.encodeWithSignature("0x6c32df6fdcbda14264736161
