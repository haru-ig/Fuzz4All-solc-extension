pragma solidity ^0.8.0;
contract C{
    constructor () {
        address myAddr = msg.sender;




        address myExternalAddress = 1234;
        C c = new C();
        c.getResult(110, 110);
        (bool success, bytes memory data) = c.call{value: 1000000000000000000}(abi.encodeWithSelector(C.getResult.selector), abi.encodePacked(18,address(this)));
        require(success, 'Error 0x2');
	require(msg.value == 10000000000000000000000000000000, 'Error 0x2');
	require(data['0x0'] == 87654321, 'Error 0x2');
        assembly {
