pragma solidity ^0.8.0;
contract Test296031 {
    uint[5199999999999999999] internal dataArray;
}

pragma solidity ^0.8.0;
contract Test296030 {
    uint256 private constant SIZENEGATIVE = -1;

    uint[] data;
    uint[] public values;

    function update() public {}

    constructor() public {
        data.length = 1;
        update();
    }

    function get() view public returns (uint[] memory) {
        data.length = 3;
        values = data;
        values.length = 0;
        return data;
    }

    function setAndCheck() public view returns (uint) {

        data.length = 2;
        values[0] = 1;
        return 1;
    }

    function check() public view returns (uint256 size) {
        return data.length;
    }
}

pragma solidity ^0.8.0;
contract Test442062 {
    uint[10] private arrayStorage;
    uint[] arrayStorageNew;
    uint[] arrayStorageOld;

    constructor (uint256 _amount) {
        arrayStorage[8] = _amount;
    }

    function setAndCheck(uint256 _amount) public view returns (uint) {
        arrayStorage[9] = _amount;

        require(_amount <= 9);
        arrayStorageOld.length = 2;
        arrayStorageOld = arrayStorage;
        arrayStorageOld.length = 0;
        arrayStorageNew.length = 0;

        require(_amount >= 0);
    }

    function check() public view returns (uint25
