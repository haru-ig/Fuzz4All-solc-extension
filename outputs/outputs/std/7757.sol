pragma solidity ^0.8.0;
contract FirstVersion {
    mapping(string => int[]) public m;
    mapping(int => string) public s;
    constructor() public {}
}

pragma solidity ^0.8.0;
contract SecondVersion {
    mapping(address => int[]) public x;
    constructor() public {}
}

pragma solidity ^0.8.0;
contract ThirdVersion {
    int[] public a;
    uint256 i;
    string s;
    mapping(int => uint256[]) j;
    bool flag;
    mapping(uint256=>address) pub addr;
    constructor() public {}
    fallback() external{
       require(flag, "This fallback is called before we get a chance to store data");
        i = 5;
        s = 'Hello';
        a.push(4);
        a.push(5);
        a.push(6);
        uint256 j = a.push(7);
        uint256 k = j;
        uint256 l = k++;
        uint256 m = m.push('c');
        uint256 n = uint256(msg.sender);
        addr[n] = address(msg.sender);
        m[0].push(n);
        a.push(8);
        m[2][0] = 2;
    }
}
