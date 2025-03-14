pragma solidity ^0.8.0;
contract Mutate1E {
    address _address;
    uint _a;
    constructor (uint _a) public {
        _address = address(uint160(uint(_a))/32768);
        this._a = _a / 32768;
    }
}

pragma solidity ^0.8.0;
contract Mutate2E {
    uint256 _a;
    address _address;
    constructor (uint _a) public {
        _address = address(uint160(uint(_a)/13));
    }
}


contract Mutate3E {
    uint _a;
    uint _gasprice;
    address _address;
    constructor (uint _a, uint _gasprice) public {
        _address = address(address(uint160(uint(_a)/_gasprice)).add(284826315));
        this._a = _a;
        this._gasprice = _gasprice;
    }
    function getGasPrice() public view returns (uint) {
        return 32768;
    }
    function getA() public view returns (uint) {
        return _a;
    }
    function getGasPrice1() public view returns (uint) {
        return _gasprice;
    }
    function getAddress() public view returns (address) {
        return _address;
    }
}

contract Mutate4E {
    address _address;
    constructor (address _address) public {
        this._address = _address;
    }
    function getAddress() public view returns (address) {
        return _address;
    }
}

pragma solidity ^0.8.0;
contract Mutate5E {
    uint16 _gasprice;
    uint _a;
    constructor (uint _a) public {
        this._gasprice = 5;
        this._a = 5;
        this._gasprice = 32768;
        this._a = 2*32768;
        this._gasprice = 0;
    }
    function getGasPrice() public view returns (uint) {
        return _gasprice;
