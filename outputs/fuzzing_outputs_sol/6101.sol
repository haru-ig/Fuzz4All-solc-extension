pragma solidity ^0.8.0;
contract B {
    address public admin;
    function setAdmin(address _addr) public {
        admin = _addr;
    }
    function adminAddress() public returns (address) {
        return admin;
    }
    function payableFallback() public payable {}

}
contract B is B {
    function payableFallback() public payable {}
}
contract B is B {
    struct Test {}
    Test storage testStruct;

}
contract Caller {
    address public from;
    address public to;
    address public contractToRun;
    mapping(uint => Test) testMapping;
    function Caller(address _from) public {
        from = _from;
    }
    function callAndTest() public {
        testMapping[0].to;
    }
    function callAndTestFail() public {
        try testToCall.call(from) {
            testMapping[0].to;
        }
        catch (bytes32 error) {
            testMapping[0].to;
        }
    }
    function testToCall() public returns(address) {

    }
}
