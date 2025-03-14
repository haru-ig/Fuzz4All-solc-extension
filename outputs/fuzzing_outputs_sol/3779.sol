pragma solidity ^0.8.0;
contract Example15 {
    function example15() public pure {

    }
}



pragma solidity ^0.8.0;


contract Caller {
    address public adminAddress;

    constructor() {
        adminAddress = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == adminAddress,"Only admin allowed");
        _;
    }

    function call(address contractAddress, bytes calldata data) public onlyAdmin returns (bytes memory) {
        require(contractAddress.call(data),"Error calling");
        return abi.decode(contractAddress.call(data),"(bytes)0");
    }
}
