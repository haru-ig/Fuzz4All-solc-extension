pragma solidity ^0.8.0;
contract Original {
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    function add(uint a, uint b) public pure returns (uint) {
        uint _result = a + b;
        bytes memory __temp_storage = new bytes(666);
        uint _temp_storage = 0;

        assembly {
            mstore(__temp_storage, _result)
            _temp_storage := 666
            __temp_storage := add(__temp_storage, _temp_storage)
        }
        uint _a = _temp_storage >> 0;
        uint _b = _temp_storage >> 32;
        return (_a + _b);
    }

    function add2(uint a, uint b) public pure returns (uint) {
        bytes memory __temp_storage = new bytes(555);
        uint _temp_storage = 0;
        assembly {
            mstore(__temp_storage, _result)
            _temp_storage := 555
            __temp_storage := add(__temp_storage, _temp_storage)
        }
        uint _a = _temp_storage >> 0;
        uint _b = _temp_storage >> 32;
        return (_a + _b);
    }

    function mul(uint a, uint b) public pure returns (uint) {
        bytes memory __temp_storage = new bytes(333);
        uint _temp_storage = 0;

        assembly {
            mstore(__temp_storage, _result)
            _temp_storage := 333
            __temp_storage := mul(__temp_storage, _temp_storage)
        }
        uint _a = _temp_storage >> 0;
        uint _b = _temp_storage >> 32;
        return (_a * _b);
    }

    function div(uint a, uint b) public pure returns (uint) {
        bytes memory __temp_storage = new bytes(222);
        uint _temp_storage = 0;

        assembly {
            mstore(__temp_storage, _result)
            _temp_storage := 222
            __temp_storage := div(__temp_storage, _temp_storage)
        }
        uint _a = _temp_storage >> 0;
        uint _b = _temp_storage >> 32;
        return (_a / _b);
    }
}
