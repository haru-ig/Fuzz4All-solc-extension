pragma solidity ^0.8.0;
contract H {
    uint256[3] m = [ 10, 11, 3, ] ;
    uint256 x = 5;
    constructor(uint256 i) public {
      m[2] = 8;
      m[0] += x;
    }
}

pragma solidity ^0.8.0;
contract I {
    uint256[3] array;
    constructor(uint256[3] memory input) public {
        array = input;
    }
}
contract Main {
    function main() public {
        uint256[3] memory a = [ 4, 5, 6 ];
        I i = new I(a);
        i.function(a);
        uint256[3] memory b = [8, 9, 3];
        G memory g;
        g.constructor(a, 0);
        H m;
        m.constructor(0);
    }
}
