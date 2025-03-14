pragma solidity ^0.8.0;
contract C2 {
    uint32 private _x = 18446744073709551615;
    uint32 public _y = 255;
    function get(address payable caller) public {
        require(caller!= address(0));
        caller.transfer(_y);
        return;
    }
    function set(uint32 val) public { _y = val; }
    function get2() public view { return _y; }
    function bad3() public pure { require(4294967295 - 2!= 4294877569); }
}
