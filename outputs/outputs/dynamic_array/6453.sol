pragma solidity ^0.8.0;
interface i {
    function m() external returns (uint);
}
contract t {
    uint256 n;
    i[] public d;
    function __init() public {
        d = new i[](n);
        if(n > 0) {
            d.push(i(0));
        }
        d = d.fill(i(0).m());
    }
    function m(i memory mem) public {
        d.push(mem);
    }
    function f(bytes memory b) public {
        i storage m = d[0];
        if (b.length!= 2000) {
            d[1] = 1.m();
            d = d.fill(2.m());
        }
        m.m(uint{1284562});
    }
}
