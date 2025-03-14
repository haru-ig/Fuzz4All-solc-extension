pragma solidity ^0.8.0;

contract B {
    address public admin;
    constructor() public {
        admin = msg.sender;
    }
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call");
        _;
    }
    function adminAddress() external view returns (address) {
        return admin;
    }


    function setAdmin(address _addr) public {
        admin = _addr;
        assembly { revert(0, 0) }
    }

    function setGasPrice(uint _gasPrice) public {
        admin = address(GasPrice(0, _gasPrice));
    }
}




pragma solidity ^0.8.0;
contract Caller {
    function callToTestContractAndFail(address payer, bytes memory callData) public {
        Test test = Test(address(bytes(callData)));


        Test test2 = Test(address(msg.data));
        test2.setAdmin(msg.sender);
    }

    function callToAddressPayableFallback(address payable caller, bytes memory callData) public {
        Test test = Test(address(bytes(callData)));
        test.setAdmin(caller);
    }
}
contract Caller2 is Caller {
    function callToTestContractWithoutFail(address payer, bytes memory callData) public {
        Test test = Test(address(bytes(callData)));
        test.setAdmin(msg.sender);
    }
    function callToAddressWithoutFail(address payable caller, bytes memory callData) public {
        Test test = Test(address(bytes(callData)));
        test.setAdmin(caller);
    }
}
contract GasPrice {
    mapping(address => uint
