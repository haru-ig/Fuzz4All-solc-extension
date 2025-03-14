pragma solidity ^0.8.0;
contract Arithmetic {
    mapping (address => uint[]) public _memMap;
    function add(uint x, uint y, uint z) public pure returns (uint zSum) {
        return x + y + z;
    }
    function getSumInArray(uint[] memory arr) public pure returns (uint sum) {
        sum = arr.reduce(function (prev, current) {
            return prev + current;
        });
    }
    function getSumInMapping(uint[] memory arr, address addr) public view returns (uint sum) {
        sum = _memMap[addr].reduce(function (prev, current) {
            return prev + current;
        });
    }
    function findElement(uint[] memory arr) public pure returns (uint value) {
        for (uint i = 0; i < arr.length; i++) {
            if (arr[i] == 3) {
                return arr[i];
            }
        }
        return value;
    }
    function findElementInMapping(uint[] memory arr, address addr) public pure returns (uint value) {
        return _memMap[addr].reduce(function (prev, current) {
            if (arr[i] == value) {
            return prev;
            } else{
            return prev + current;
            }
        });
    }
    function sortArray(uint[] memory arr) public pure returns (uint newOrder) {
        uint i;
        uint j;
        uint tmp;
        for (i = 0; i < arr.length - 1; i++) {

            for (j = i + 1; j < arr.length; j++) {
                if (arr[j] < arr[i]) {
                    i = j;
                }
            }
            if (i!= j) {

                tmp = arr[i];
                arr[i] = arr[j];
                arr[j] = tmp;
            }
        }
    }
    function sort(uint[] memory arr, address addr) public {
        _memMap[addr] = new uint[](arr.length);
        for (uint i = 0; i < arr.length; i++) {
            _memMap[addr][i] = arr[i];
        }
        sortArray(arr);
    }
}
