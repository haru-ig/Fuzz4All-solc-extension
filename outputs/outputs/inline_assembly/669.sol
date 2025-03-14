pragma solidity ^0.8.0;
contract Mutator5 {
    constructor() public {}
    modifier doUpTo(uint256 index) {
        require(index <= 500, "must be > 500");
        _;
    }
    function testMethod(int[] memory v) public {
        v[10] = 99;
    }
}

pragma solidity ^0.8.0;
contract Mutator6 {
    constructor() public {}
    modifier doUpTo(uint256 index) {
        require(index <= 400, "must be > 500");
        _;
    }
    function testMethod(int[] memory v) public {
        v[9] = 99;
        v[10] = 99;
    }
}
contract Mutator1 {
    function testMethod(int[] memory v) public doUpTo(uint256 x)
    {
        v.push(y);
        v.push(y);
    }
}
contract Mutator2 {
    function testMethod(int[] memory v) public doUpTo(uint256 x)
    {
        v.push(v.length - 1, y);
        v.push(v.length - 1, y);
    }
}
contract Mutator3 {
    function testMethod(int[] memory v) public doUpTo(uint256 i, uint256 n)
    {
        for(i; i < n; i++) v.push(-1, 4);
    }
}
contract Mutator4 {
    function testMethod(int[] memory v) public doUpTo(uint256 i, uint256 n)
    {
        for(i; i < n; i++) v.push(0, 4);
    }
}
contract Mutator5 {
    function testMethod(int[] memory v) public doUpTo(uint256 i, uint256 n)
    {
        for(i; i <= 100; i+=1) v.push(99, 4);
    }
}
contract Mutator6 {
    function testMethod(int[] memory v) public doUpTo(uint256 i, uint256 n)
    {
        for(i++; i < n; i++) v.push(v.length - 1, 4);
    }
}
