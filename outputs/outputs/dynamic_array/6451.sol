pragma solidity ^0.8.0;
contract b {
    uint256[] private a;
    constructor () { a.push(50); }
    function b() public { a.push(50); }
    function a() public view returns(uint256){ return a[0]; }
    function b() public { a[0] = 0; }
    receive() external payable { }
}



pragma solidity ^0.8.0;
contract b {
    bytes32[] private a;
    constructor (){ }
    function b() public { a.push(50); }
    function a() public { a[0] = 0; }
    receive() external payable {}
}
