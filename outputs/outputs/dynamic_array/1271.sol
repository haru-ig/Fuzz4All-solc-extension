pragma solidity ^0.8.0;
contract DynamicArrayTypeCheck {
    constructor () {
        uint256[] memory a = [20,30,10];
    }
    function increment(uint256 x) public pure {
        require(x%4 == 0,"Increment is incorrect.");
        x = x + 1;
    }
    function incrementArray() public {
        uint256[] memory a = [20,30,10];
        uint256 z = a.length;
        a = a.concat([10]);
        uint256[] memory a2 = a;
        uint256 z2 = a.length;
        a.length = 0;
        uint256 b = a.length;
        b = a.length;
        uint256 a3 = a.pop();
        uint256 b2 = a.pop();
        uint256[] memory a4;
        uint256 b3 = a4.length;
        uint256 c = increment(a);
        uint256 c2 = increment(a2);
        uint256 c3 = increment(a);
        uint256 c4 = increment(a4);
        uint256 d;
    }
    bool public invalid = true;
    function test() public {
        uint256 d;
    }
}
