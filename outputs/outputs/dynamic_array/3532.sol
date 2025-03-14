pragma solidity ^0.8.0;
contract C2 {
    function div() public pure {

    }
}
pragma solidity ^0.8.0;
contract C3 {
    uint[51] a;
    C2 c;
    constructor() public {
    }
    function div() public {
        uint[51][62] memory _dummy1;
        for(uint256 i = 1; i <= 51; ++i ) {
            _dummy1[i][0] = 0;
        }
    }
}
pragma solidity ^0.8.0;
contract C4 {
    uint[] memory b;
    C c;
    constructor() public {
    }
    function add() public {
        b.push(62);
    }
    function sra(uint a) public view returns (uint) {
        return a >> 0;

    }
    function div() public {
        c.div;
    }
}
pragma solidity ^0.8.0;
contract C5 {
    uint[] memory b;
    uint8[] memory b2;
    C c;
    constructor() public {
    }
    function sub() public {
        b.push(0) ;
    }
    function mul() public {





        b.push(uint8(0)) ;
        b2.push(uint8(0));
    }
    function push(uint16 x) public {
        b.push(x) ;
    }
    function mload(bytes32 a, bytes memory b) public view {
        if (b.length!=
