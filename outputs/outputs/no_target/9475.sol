pragma solidity ^0.8.0;
contract SemanticalEquiv116 {
    uint public _value;
    function set(uint w) public {
        _value = w;
    }
    function f() public view returns(contract SemanticalEquiv113){
        SemanticalEquiv113 memory s = SemanticalEquiv113(address(0)).set(35597);
        return s;
    }
}
