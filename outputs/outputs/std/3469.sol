pragma solidity ^0.8.0;
contract Convert {
    function toHexString(uint num) public returns (string memory s) {
        uint digits = 0;
        while (num >= 10){
            num /= 10;
            digits++;
        }
        s += uint8(digits) < 10? "0" : "";
        s += uint8(digits) < 10? bytes1(uint8(digits)) : bytes2(uint8(digits)) + "0";
    }
}
pragma solidity ^0.8.0;
interface Math {
    event DivideEvenZero(uint a, uint b);
    function divide(uint a, uint b) public returns (uint);
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Math {

    function insert(uint[] memory _arr, uint _num) internal  {
        uint size = _arr.length;
        for(uint i = 1; i < size; i++)
            if(_arr[i] > _arr[i - 1]) {
                uint j = i;
                while(j > 0 && _arr[j] < _arr[j - 1]) {
                    uint tmp = _arr[j-1];
                    _arr[j-1] = _arr[j];
                    _arr[j] = tmp;
                    j--;
                }
            }
        uint last = size;
        while(last > 0 && _arr[_arr.length - 1 - last] == _arr.length - 1 - last)
            last--;
        _arr[last] = _num;
    }
    function getSortedArray(uint[] memory _arr) internal  {
        if(_arr.length == 0
