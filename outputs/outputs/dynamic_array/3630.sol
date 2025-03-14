pragma solidity ^0.8.0;
contract D {
    uint256 public f;
    function g() public {
        delete h[f];
        h[f] = f + 15;
    }

    address[] public h;
    function i() public {
        k(3);
        h.length = 1;
        h[0] = address(this);
    }
    function k(uint a) public {}
}

pragma solidity ^0.6.11;
contract E {
    uint public l;
    function m() public {

        l = f + 30;
    }
}
