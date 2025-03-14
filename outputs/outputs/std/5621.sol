pragma solidity ^0.8.0;
contract M254Mut{
    uint public x = 1;
    uint public y = 2;
    address public owner;
    constructor(){
        owner = msg.sender;
    }
    modifier hasOwner(){
        msg.sender == owner;
        _;
    }
    function multiply(uint z) public hasOwner{
        uint w;
        (w,y) = (x,y);
        x=x*z;
        y=2 * (y + w);
    }
    function divide(uint z) public hasOwner{
        uint w;
        (w,x,y) = (x,y,x);
        y=2 * x;
        x=x/z;
    }
}

pragma solidity ^0.8.0;
contract Array {
    uint internal constant MINUS_ONE = 2 ** 255 - 1;
    uint256 internal[] public arr;
    uint public length = 0;
    uint internal index=-1;

    function set(uint i, uint z) public {
        arr[i] = z;
        length++;
    }

    function get(uint i) public view returns (uint) {
        if(length > i) {
            return arr[i];
        }
        return 0;
    }

    function remove(uint i) public {
        if (length > i) {
            arr[i];
        }
    }

    function getmin() public return (uint){
        if(length <= 0) {
            return 0;
        }
        return arr[0];
    }
    function getmax() public return (uint){
        if(length <= 0) {
            return 0;
        }
        return arr[length-1];
    }
    function getsum() public return (uint){
        uint ret = 1;
        for(uint i=0; i<length; i++) {
            ret = ret * arr[i];
        }
        return ret;
    }
    function setArray(uint[] memory _arr) public {
        length = 0;
        if (_arr.length > 0) {
            for(uint i=0; i<_arr.length; i++) {
                set(i, _arr[i]);
            }
        }
    }
    function arrayTostring() public {
        arrayToString((arr, 0), length);
    }
    function arrayToString(
        uint[] memory _arr,
        uint _length
    ) public pure {
        string memory _str = "";
        for(uint i = 0; i < _length; i++) {
            _str += arrayToStringElement(_arr[i]);
        }
        return _str;
    }
    function arrayToStringElement(uint _elem) pure public
