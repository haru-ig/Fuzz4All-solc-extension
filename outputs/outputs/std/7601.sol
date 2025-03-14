pragma solidity ^0.8.0;
contract BetterCase456 {
    uint min;
    uint max;
    uint sum;
    function set(uint _min, uint _max, uint _sum) public {
        min = _min;
        max = _max;
        sum = _sum;
    }
    function addMin2Max() public {
        if (min > max) {
            uint tmp = min;
            min = max;
            max = tmp;
        }
    }
    function addMax2Min() public {
        if (min > max) {
            uint tmp = min;
            min = max;
            max = tmp;
        }
    }
    function mulSum() public {
        sum = min * max * sum;
    }
}

pragma solidity ^0.8.0;
contract BetterCase789 {
    address[15] public addresses;
    bytes32[46] public values;
    function set(address[15] memory _addresses, bytes32[46] memory _values) public {
        addresses = _addresses;
        values = _values;
    }
    function getMin() public view returns (address) {
        uint minIndex = uint(keccak256(abi.encodePacked(minAddress(), addresses)));
        return addresses[minIndex];
    }
    function getMax() public view returns (address) {
        uint maxIndex = uint(keccak256(abi.encodePacked(maxAddress(), addresses)));
        return addresses[maxIndex];
    }
    function getAddresses
