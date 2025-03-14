pragma solidity ^0.8.0;
 contract Test43{
    address public admin;
    address[] public adminAddress;
    constructor () public {
        admin = msg.sender;
        address tempAddress;
        tempAddress = admin;
        adminAddress.push(tempAddress);
        tempAddress = tempAddress.call.value(address(this).balance)();
        adminAddress.push(tempAddress);
        tempAddress = admin;
        adminOf[tempAddress] = 1;
    }
    function getAddr(uint i) public view returns (address){
        return adminAddress[i];
    }
    function test() public {
        address tempAddress;
        tempAddress = address(msg.sender);
        adminAddress.push(tempAddress);
    }
    function test2() public {
        address tempAddress;
        tempAddress = address(this);
        adminAddress.push(tempAddress);
        tempAddress = tempAddress.call.value(address(this).balance)();
        adminAddress.push(tempAddress);
        tempAddress = address(this);
        adminOf[tempAddress] = 2;
    }
    function test3() public {
        address tempAddress;
        tempAddress = admin;
        adminAddress.push(tempAddress);
        tempAddress = tempAddress.call.value(address(this).balance)();
        adminAddress.push(tempAddress);
        tempAddress = tempAddress;
        tempAddress.call{value:tx.gas - msg.value}()(0);
        adminOf[tempAddress] = 3;
    }
}
