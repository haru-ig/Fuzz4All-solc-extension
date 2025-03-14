pragma solidity ^0.8.0;
contract Interface {
    function sum() external;
    function max() external view returns (uint);
    function min() external view returns (uint);
    function length() external view returns (uint);
    function set(uint val) external;
   function get(uint index) external view returns (uint);
   function swap(uint i1, uint i2) public;
   function shift(uint n, uint m) external;
   function copy(uint src, uint dst) external;
   modifier onlyarray { uint _i;   _; i; }
}
pragma solidity ^0.8.0;
contract Array {
    uint[4] array;
    uint i;
    uint j;
    uint k;
    uint l;
    uint m;
    uint n;
    uint o;

    function sort(uint _length)
        external
        onlyarray
        returns (uint length)
    {
        uint[] memory a = new uint[](_length);
        for (uint i = 0; i < a.length; i++) { a[i] = i; }
        sort(a);
        length = a.length;
    }

    function sort(uint[] memory a)
        external
        onlyarray
        returns (uint length)
    {
        length = a.length;

        for (uint i = 0; i < length / 2; i++) {
            uint minIndex = i;
            uint minval = a[i];
uint minptr = i;
uint a_len = length - 1;

            for (uint j = 0; j < a_len; j++) {

                if(a[j] < minval) {
                    minVal = a[j];
                    minptr = j;
uint kmin = i + 1;
uint kminptr = j + 1;
                }

            }
uint temp = a[kmin];
a[kmin] = a[minIndex];
a[minIndex] = temp;
a_len--;

}
}
function set(uint val) public {
    array[3] = val;
}
function get(uint index) public view returns (uint) {
    return array[index];
}
function swap(uint i1, uint i2) public {
    uint temp = array[i1];
    array[i1] = array[i2];
    array[i2] = temp;
}
function copy(uint src, uint dst) public {

    array[dst] = array[src];
}
}
