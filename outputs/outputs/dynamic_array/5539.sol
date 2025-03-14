pragma solidity ^0.8.0;
contract Test74 {
    address payable payable1;
    receive() payable external { }
}


pragma solidity ^0.8.0;
contract Test75 {
    struct S2 { uint a; }
    struct S1 { S2[] b }
    struct S1 payable b;
    uint256 b1;
    function() public payable {
        uint256 b2;
        S1 storage c;
        b1 = b2;
    }
}
