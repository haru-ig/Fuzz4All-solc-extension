pragma solidity ^0.8.0;
contract M12 {
    uint public c;
    function access() public view returns(uint) {
        require(c < 10, "c is too large");
        return c;
    }
    function set_c(uint _c) public {
        c = _c;
    }
    function modify() public {
        c = c+1;
    }
}
contract M13 {
    uint public d;

    function set_d(uint _d) public {
        d = _d;
    }
}*/
