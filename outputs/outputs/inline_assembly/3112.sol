pragma solidity ^0.8.0;
contract C {
    bytes32 a;
    bytes32 b;
    uint a_;
    uint b_;
    constructor(bytes32 _a, bytes32 _b, uint _a_, uint _b_) public {
        a = _a; a_ = _a_;
        b = _b; b_ = _b_;
    }
}
contract C {
    bytes32 a;
    bytes32 b;
    uint a_;
    uint b_;
    constructor(bytes32 _a, bytes32 _b, uint _a_, uint _b_) public{
        a = _a; a_ = _a_;
        b = _b; b_ = _b_;
    }
    function setA(bytes32 _a){
        a = _a;
    }
    function setB(bytes32 _b){
        b = _b;
    }
    function setAA(uint _a){
        a_ = _a;
    }
}
contract C {
    bytes32 a;
    bytes32 b;
    uint a_;
    uint b_;
    constructor(bytes32 _a, bytes32 _b, uint _a_, uint _b_) public {
        a = _a; a_ = _a_;
        b = _b; b_ = _b_;
    }
    function setA(bytes32 _a){
        a = _a;
    }
    function setB(bytes32 _b){
        b = _b;
    }
    function setAA(uint _a){
        a_ = _a;
    }
}
contract C {
    bytes32 a;
    bytes32 b;
    uint a_;
    uint b_;
    constructor(bytes32 _a, bytes32 _b, uint _a_, uint _b_) public {
        a = _a; a_ = _a_;
        b = _b; b_ = _b_;
    }
    function setA(bytes32 _a){
        a = _a;
    }
    function setB(bytes32 _b){
        b = _b;
    }
    function setAA(uint _a){
        a_ = _a;
    }
}



pragma solidity >=0.5.2 <0.7.0;


/**
 * @dev This interface is implemented by contracts which want to interface with contracts in Chainlink.
 * This
