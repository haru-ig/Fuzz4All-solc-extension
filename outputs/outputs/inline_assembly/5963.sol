pragma solidity ^0.8.0;


contract ComplexTest {

    mapping (address=>uint256) public mappingKey;


    modifier onlyCaller(address user) {
        require(user == msg.sender);
        _;
    }

    modifier onlyCaller2(address user) {
        require(user == msg.sender || user == msg.calldatacopy(0, 0));
        _;
    }

    modifier onlyCaller3(address user) {
        require(msg.sender == user);
        _;
    }

    modifier onlyCaller4(address user) {
        require(user == address(this));
        _;
    }

    modifier onlyCaller5(address user) {
        require(user == address(this) || user == msg.calldata(0, 0));
        _;
    }




    fallback() external payable {
    }


    function add(uint _data) public onlyCaller2 {
        mappingKey[msg.sender] += _data;
    }


    function substract(uint _data) public onlyCaller2 {
        mappingKey[msg.sender] -= _data;
    }



    function average(uint _data) public onlyCaller2 view returns (uint256) {
        return mappingKey[msg.sender] / _data;
    }


    function show() public onlyCaller2 view {
        mappingKey[msg.sender] = 0;
        for (uint i = 0; i < mappingKey.length; i++) {
            mappingKey[i] = mappingKey[i] + 1;
        }
        if (mappingKey[0] == 1 && mappingKey[1] == 2) {
            mappingKey[0] = mappingKey[0] + 1 + 2;
        }
        mappingKey[msg.sender] = 0;
        mappingKey[0];
    }


    function testInlineAsm(uint _data2) external onlyCaller3 calldata {
        uint _data = assembly {
            let _data1 := add(0, _data2)

            return sub(_data1, add(1000,
