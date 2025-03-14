pragma solidity ^0.8.0;
contract FallbackMod {
    function mutate() public {
        return;
    }
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract MultipleFallbacks {
    address payable[] addresses;
    address[] addresses2;
    mapping (uint256 => uint256) data;
    address testFunc;
    address testAddress;
    address testAddress2;

    constructor() {
        testFunc = payable(new FallbackMod());
    }
    function testFuncCall() public {
        testAddress = address(this);
        testAddress2 = new address(0x00);
        for (uint i = 0; i < 1; i++) {
            testFunc.call{value: 0.1 ether}("");
        }
    }
    receive() external payable {}
    function multipleAddresses() public {
        for (uint256 i = 0; i < 3; i++) {
            this.testFuncCall();
            addresses.push(address(this));
            addresses2.push(address(this));
        }
    }
    function getAddressData() public view returns(uint256[] memory) {
        return data.values();
    }
    function getAddressData2() public view returns(address[] memory) {
        return addresses2;
    }
}
