pragma solidity ^0.8.0;
contract Test {
    uint public id;
    constructor () { id = 0; }
    function setID(uint _id) public {
        id = _id;
    }
}

pragma solidity ^0.8.0;
contract Test2 {
    uint public id;
    mapping (uint => uint) private _storage;
    constructor() {
        id = 0;
        _storage[0] = 1;
    }
    function getID() public view returns (uint) {
        return id;
    }
    function setID(uint _id) public {
        id = _id;
        uint value = 5;
        _storage[0] = value;
    }
}
pragma solidity ^0.8.0;
contract Test {
    uint public id;
    uint[100] public ids;
    address payable[3] public addressees;
    function getIDs() public view returns (uint[] memory) {
        uint[] memory results = new uint[](3);
        for(uint i = 0; i < 3; i++) {
            results[i] = ids[i];
        }
        return results;
    }
    function setIDs(uint[] memory _ids) public {
        for(uint i = 0; i < 3; i++) {
            ids[i] = _ids[i];
        }
    }
    constructor () {
        id = 0;
        for (uint i = 0; i < 3; i++) {
            ids[i] = 0;
            addressees[i] = payable(address(1));
        }
    }
}

pragma solidity ^0.8.0;
contract Test {
    emit LogEvent(1751, 947500, 3, contract(true)).log2();
    string public message;
    constructor (string memory message_in) public {
        message = message_in;
    }

    event LogEvent(uint _tokenId, uint _id, int24 _data, uint8[3]  _signature);

}
