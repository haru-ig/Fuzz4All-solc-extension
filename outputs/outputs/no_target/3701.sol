pragma solidity ^0.8.0;
contract Z {
    constructor (uint z) public {
        if (z > 0 || x > 0)
            log0(z * x);
    }
}
contract W {
    event E (uint w);
    address x;
    function f() public returns (uint) {
        return 3;
    }
}
contract Y is Z{
    uint z;
    function Z (uint z) public {
        if(z > 0 || x > 0)
            log0(z * x);
    }
    function f() public returns (uint) {
        return 4;
    }
}
contract A is W {
    function W (uint w) public {
        if (w > 0 || x > 0)
            log0(w * x);
    }
}
