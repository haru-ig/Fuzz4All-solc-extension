pragma solidity ^0.8.0;
contract Arrays4 {
    mapping (uint256 => uint256) public a;
}

pragma solidity ^0.8.0;
contract Arrays5 {
    bool[] public a;
    bool[] public c;
    modifier test(uint256 x) {a[x] = x; return; }
}
