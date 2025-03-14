pragma solidity ^0.8.0;
interface IRichArray {
    function push(address x) external;
    function update(uint a, uint y) external;
    function remove(uint a) external;
    function first() external view returns (address);
    function last() external view returns (address);
    function length() external view returns (uint);
}
contract AddressLib {
    address zero_Address()  internal constant returns (address x) { if (x==address(0)) return x; return address(0); }
    bool true_Bool() internal constant returns (bool x) { if (x==true) return x; return false; }
    bool false_Bool() internal constant returns (bool x) { if (x==false) return x; return true; }
    address[] public address_Address_Array;
    IRichArray[] public richArray_RichArray_Array;
    function newAddress() public {
        address_Address_Array.push(address(this));
        }
    }
