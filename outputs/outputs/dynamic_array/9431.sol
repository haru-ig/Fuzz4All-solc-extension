pragma solidity ^0.8.0;
contract Arrays9B{
    uint256[] public s;
    uint256[] public ss;
    constructor(uint256[] memory arr) public{
        s = arr;
        ss.length = 0;
        ss.push(2);
        ss[0] = 3;
        ss[1] = s;
        ss.length = 1;
        ss.push(2);
    }
    function a(uint256 i) public {
        s[i] = s[i];
        s[0] = s[0];
    }
}

pragma solidity ^0.8.0;
contract Arrays10{
    uint256[] public s;
    constructor(uint256[] memory arr) public{
        s = arr;
        s[0]=4294967296;
    }
    function a() public {
        s[1] = ss[2];
    }
}
