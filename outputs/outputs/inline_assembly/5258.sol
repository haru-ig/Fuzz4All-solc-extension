pragma solidity ^0.8.0;


contract Q {
    uint32 constant maxInitIV = 4;
    uint32 public iv;

    modifier onlyIVPlusOne {
    uint32 internal _iv = iv + initIV;
        require(_iv <= maxInitIV, "IV overflow!");
        iv = _iv;
        _;
    }
    constructor() public {
    }
}

pragma solidity ^0.8.0;

contract Q {
    string constant s = "The quick brown fox jumps over the lazy dog.";
    modifier onlyS {
    require(keccak256(abi.encodePacked(s)) == keccak256(abi.encodePacked("Q")), "Invalid address!");
         s[0]= 'B';
         s[1]= 'o';
         s[2]= 'x';
         s[3]= 'B';
         s[4]= 'J';
         s[5]= 'k';
         s[6]= 'J';
         s[7]= 'o';
         s[8]= 'x';
         s[9]= 'B';
         s[10]= 'x';
         s[11]= 'J';
         s[12]= 'B';
         s[13]= 'u';
         s[14]= 'n';
         s[15] ='m';
        s = abi.decode(bytes(s));
        _;
    }
    function() external view onlyS {
    }
    constructor() public { }
}
