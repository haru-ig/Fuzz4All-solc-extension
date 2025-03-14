pragma solidity ^0.8.0;
contract E {
    address payto;
    constructor(address payTo) payable public {
        payto = payTo;
    }
    modifier hasAddr() {
        _;
        emit AddressSet(msg.sender, address(this));
    }
    event AddressSet(address indexed _oldAddress, address indexed _newAddress);
}

pragma solidity ^0.8.0;
contract H {
    constructor() {
        calldata _payto = new address[](1);
        payto = abi.decode(_payto, (address[0]));
    }
}

pragma solidity ^0.8.0;
contract G {
    bytes data;
    constructor() public {
        data = new bytes(4 * 1024);
        data[0] = 1;
        data[1] = 2;
        data[2] = 3;
        data[255] = 4;
        data[255 + 1] = 5;
    }
}
contract I {
    constructor() publicpayable{}
    function() publicview payable(){
    }
    function bytesData() public returns (bytes) {
        return data;
    }
    function addressData() public returns(address){
        return msg.sender;
    }
    function paydataData() public{
        if(msg.value == 4){
            _;
        }
    }
    function uintData() public returns(uint){
        return 42;
    }
    function stringData() public returns (string memory){
        return "Hello world";
    }
    function bytesdataData() public returns (bytes memory){
        return "Hello world".bytes();
    }
    function addressdataData() public returns (address[]){
        return [address(42), address(uint(14)), address(bytesdataData()), address(data)];
    }
    function uintdataData() public returns (uint[]){
        return [uint(777), uint(888), uint(7)];
    }
    function bytesdataarrayData() public returns(bytes[] memory){
        return [bytes(1
