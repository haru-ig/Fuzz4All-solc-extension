pragma solidity ^0.8.0;

contract Comp{
    uint256 public _a;
    constructor(uint32 _b) {
        _a = _b;
    }
    function decrease() public {
         _a -= 10;
    }
}
contract Comp3 is Comp{
    constructor(uint32 _b) public {
        super._a = _b;
    }

}
contract Comp4 is Comp{
    constructor(uint32 _b) public {
        super._a = _b + 10;
    }
    function decrease() public {
        _a += 10;
    }
}
contract Comp5 is Comp{
    constructor(uint32 _b) public {
        super._a = _b + 10 + 20;
    }
}
contract Comp6 is Comp{
    constructor(uint32 _b) public {
        super._a = _b + 10 + 20 + 30;
    }
    function decrease() public {
        _a += 10;
    }
}
contract Comp7 is Comp {
    constructor(uint316 _b) public {
        super._a = _b + 10 * 10;
    }
    function decrease() public {
        _a += 10;
    }
}
contract Comp8 is Comp{
    constructor(uint32 _b) public{
        super._a = _b *.9 + 20;
    }
}
contract Comp9 is Comp{
    constructor(uint32 _b) public {
        super._a = _b * (.9 + 10 + 20);
    }
    function decrease() public {
        _a += 10;
    }
}
contract Comp10 is Comp{
    constructor(uint32 _b) public {
        super._a = _b / 10 + 20 * 10;
    }
    function decrease() public {
        _a += 10;
    }
}
 contract Comp11 is Comp {
    constructor(uint32 _b) public {
        super._a = _b / 100 + 350 + 3 * 10 * 15000 * 10;
    }
}
 contract Comp12 is Comp {
    constructor(uint32 _b) public {
        super._a = _b / 100 + 350;
    }
    function decrease() public {
        _a += 10;
    }
}
contract Comp13 is Comp{
    constructor(uint32 _b) public {
        super._a = 100;
    }
