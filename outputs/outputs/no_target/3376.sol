pragma solidity ^0.8.0;
contract mutator2 {
    uint256 constant public M = 30000000000000000000000000000000;
    uint256 constant public N = 30000000000000000000000000000000;
    uint256 constant public D = 15;
    uint256 constant public D2 = 15;
    uint256 constant public D24 = 1;
    uint256 constant public D256 = 1;
    uint256 constant public CUTOF256 = 1;
    uint256 constant public A = 1;

    mapping(address => uint256) public m;
    mapping(address => uint256) public aMap;

    function() public payable {
        _ = msg.sender;
    }
    modifier checkContractExists(address addr) {
        require(aMap[addr]!= address(0), "check failed");
        _;
    }
    function testModify(uint256 x) public pure returns(uint256 i) {i = x; aMap[msg.sender] = 0;}
    function testModify2(uint256 x) public returns(uint256 ret) {m[msg.sender] = x; aMap[msg.sender] = 0;}
    function testMod1() public {m[msg.sender] = m[msg.sender] - CUTOF256;}
    function testMod2() public {testModify2(m[msg.sender] - 1);}
    function testCut() public {
        testModify(0);
        testMod1();
        testMod2();
    }
}
contract solidity07206{
    uint256 constant public M = 300000000000000000000000000000000;
    uint256 constant public N = 30000000000000000000000000000000;
    uint256 constant public D = 15;
    uint
