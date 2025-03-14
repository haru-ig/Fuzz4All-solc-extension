pragma solidity ^0.8.0;
contract Test is B {
    uint256 public number = 0;
    constructor() public {
        require(number == 0, "Should be 0");
    }
    function modifyNumber(uint _n) public onlyAdmin {
        number = _n;
    }
}

contract Caller {
    constructor() public {}
    function testContract(address _addr) public payable {
        B _bContract = B(_addr);
        _bContract.setAdmin(msg.sender);
        Test _tTest = Test(_addr);
        _tTest.modifyNumber(1);
        uint256 n = _tTest.number;
        uint _number = _bContract.adminAddress();
        uint256 _number2 = Test._fallback.call.value(1 ether)("");

        require(n > 0, "_Test.number should be > 0");
        require(_number > 0, "_Caller.number should be > 0");
        require(n == _number, "_Test.number not what it should be");
        uint _number3 = 1 << 255;
        Test _tTest2 = Test(_addr);
        _tTest2.modifyNumber(0);
        uint _number4 = Test._ethFallback.value(1 ether)("Ethereum: ");
        Test _tTest3 = Test(_addr);
        _tTest3.modifyNumber(0);
        uint _number5;
        bytes memory _r;
        bytes32 _address;
        Test _tTest4 = Test(_addr);

        (_number5, _r, _address) = _tTest4.getNonceAndData("a",
