pragma solidity ^0.8.0;
contract Comp2 {
    uint256 public _a;
    constructor(uint32 _b) {
        _a = _b + 1;
    }
    modifier only(){
        require(msg.sender == msg.sender || msg.sender == msg.sig);
        _;
    }
    function increase() public only {
        _a += 3;
    }
}

pragma solidity ^0.8.0;
contract Comp {
    uint256 public _a;
    constructor(uint32 _c) {
        _a = _c + 1;
    }
    modifier only1(){
        revert();
    }
    modifier only2(){
        revert();
    }
    modifier only3(){
        revert();
    }
    function increase() public {
        _a += 3;
    }
}

pragma solidity ^0.8.0;
contract Comp {
    uint256 public _a;
    constructor(uint32 _d) {
        _a = _d + 1;
    }
    function increase1() public {
        _a += 1;
    }
    modifier only1(){
        revert();
    }
    modifier only2(){
        revert();
    }
    modifier only3(){
        revert();
    }
    function increase2() public {
        _a += 3;
    }
}

```
