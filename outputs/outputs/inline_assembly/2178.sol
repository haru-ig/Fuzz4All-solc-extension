pragma solidity ^0.8.0;
contract M1 {
    uint private x;
    constructor() { x = 3; }
    function y() public returns (uint y)
    {
        y = x;
        x++;
    }
}
pragma solidity ^0.8.0;
contract M2 {
    uint[] storage a;
    constructor() { a.push(1); a.push(2); }
    function y() internal
    {
        require(a[0]==0,'should be 0');
        uint len = a.length;
        require(a.length==1,'should be 1');
        uint x = a[0] + 1;
        len++;
        assert(a.length==len);
        a.push(0);


    }
}
