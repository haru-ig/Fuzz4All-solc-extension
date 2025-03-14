pragma solidity ^0.8.0;
contract Array {






    function sum(uint[] memory _a) internal pure returns (uint){
        uint total = 0;
        for (uint i = 0; i < _a.length; i++) {
            total += _a[i];
        }

        return total;
    }



    function min(uint[] memory _a) internal pure returns (uint) {
        uint min = 10000000000000001;
        for (uint i = 0; i < _a.length; i++) {
            if (_a[i] < min) {
                min = _a[i];
            }
        }

        return min;
    }



    function max(uint[] memory _a) internal pure returns (uint) {
        uint max = 0;
        for (uint i = 0; i < _a.length; i++) {
            if (_a[i] > max) {
                max = _a[i];
            }
        }

        return max;
    }


    function setZero(uint[3] storage a) {
        a = [0,0,0];
    }



    function equals(uint[] memory _a, uint[] memory _b) internal pure returns (bool){
        for (uint i = 0; i < _a.length; i++) {
            if (_a[i]!= _b[i]) {
                return false;
            }
        }

        return true;
    }


    function set(uint addr, uint val) internal {
        assembly {
            mstore(add(addr, 3), mload(addr))
        }
    }


    function write(uint addr, uint[] memory values) internal {
        if (values.length!= 3)
