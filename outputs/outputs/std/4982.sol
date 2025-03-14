pragma solidity ^0.8.0;
contract EquivalentMutated {
    uint8 private _data;

    function setPrivateData(uint8 data) public {
        _data = data;
    }

    function getData() public view returns (uint8) {
        return _data;
    }

    function setData(uint8 data) public {
        _data = data;
    }
}

pragma solidity ^0.8.0;
contract EquivalentMutated {
    uint8 private _data;



    constructor () {
        _data = 0;
    }

    function getData() public view returns (uint8) {

        return _data;
    }

    function setData(uint8 data) public {

        _data = data;
    }
}
