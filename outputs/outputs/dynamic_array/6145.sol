pragma solidity ^0.8.0;
contract Test90007 {
    uint256 b;
    function Test90007() public {
        b = 0; }
    fallback () external payable {
    }
    event Mutate ();
}

pragma solidity ^0.8.0;
contract Test90008 {
    mapping (address => uint256) public balances;
    uint256[] p;
    uint256 x;
    constructor() public { }
    fallback () external {
        balances[msg.sender] += 10000000;
        p.push(11); }
    receive () external pure {
        uint256 sum = 0;
        for(uint i = 0; i < p.length; i++) {
            sum += p[i]; }
        sum += x + 10000000; }
    event Mutate ();
}

pragma solidity ^0.8.0;
contract Test90010 {

    uint256[] x;
    constructor() public { }
    fallback () external payable {
        x.push(11);
        x.push(12);
        x.push(20); }
    receive () external pure {
    }
    event Mutate ();
}

pragma solidity ^0.8.0;
contract Test90011 {

    uint256[] x;
    constructor() public { }
    fallback () public {
        for(uint i = 0; i < 1000; i++) {
            x.push(11);
        } }
    receive () external pure {
    }
    event Mutate ();
}
