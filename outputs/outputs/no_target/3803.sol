pragma solidity ^0.8.0;

contract R1 {
    struct State {
            uint a;
    }
constructor(uint _x) public {
        a = _x;
}
function seta(uint _x) public {
        a = _x;
}
    event A(uint a);
    function get() public view returns (uint) {
        State storage s = aData();
        return s.a;
    }
}
contract R2 is R1 {
    function setb(uint _x) public {
        aData().a = _x;
}
    event B(uint a);
    function get() public view returns (uint) {
        return aData().a;
    }
    function aData() public view returns (State memory) {
        State memory s;
        assembly {
            s.a := a
        }
        return s;
    }
}
