pragma solidity ^0.8.0;
contract Main3 {
    mapping(address => uint[]) public blackboxArray;
    constructor () {

        blackboxArray[msg.sender][offset] = 13;
    }
    receive() payable { blackboxArray[msg.sender][0] += 1; }
}

pragma solidity ^0.8.0;
contract Main4 {
    string public staticString;
    constructor (string memory _paramString) public {
        staticString = _paramString;
    }
    function modifyStaticStrings (string memory _newString) public {
        staticString = _newString;
    }
}


pragma solidity ^0.8.0;
contract Main5 {
    address[] public contractArray;
    mapping(address => uint[]) public contractMap;
    mapping(address => uint[]) public contractAddressMap;
    uint[] public mapArray;
    constructor (address[] memory _paramArray) public {
        if (_paramArray.length > 0) {
            for (uint i = 0; i < _paramArray.length; i += 1) {
                contractArray[i] = _paramArray[i];
            }
            contractAddressMap[msg.sender] = contractArray;
            contractMap[contractArray[0]] = 1;
        } else {
            uint[] memory mapArray;
            mapArray.push(msg.sender);
            for (uint i = 1; i <= 10; i++) {
                mapArray.push(msg.sender * 3);
            }
            mapArray.push(msg.sender);
            contractMap[msg.sender + 1] = 1;
            contractMap[msg.sender + 2] = 1;
            contractAddressMap[msg.sender*2] = contractArray;
        }
    }
    receive() payable { contractArray.push(msg.sender + msg.value/1000); }
    function modifyArray (address[] memory _newContractArray) public {
        contractArray.push(_
