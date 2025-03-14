pragma solidity ^0.8.0;
contract Array_mutatons{
    uint _a;
    uint _b;
    uint _c;
    modifier Mutate_array_from_value(uint _param){
        uint _l;
        _;
        _param;
        _param;
        _a;
        _b;
        _c;
        _a;
        _b;
        _c;
        _a;
        _a;
    }
    function __callback(uint _param) public {
        _param;
        _a;
        _a;
        _b;
        _a;
        _b;
        _c;
        _b;
        _b;
        _b;
    }
    function __callback(uint _param, uint _a){}
    constructor(uint256 _a, uint256 _b, uint256 _c){
        _a;
        _b;
        _c;
        __callback(_c);
        __callback(_b);
        __callback(_a);


        __solidity_inline__ = __callback;
        Mutate_array_from_value(_c);
        _;
    }
}

pragma solidity ^0.8.0;
contract conditionally {
    uint _result;
    uint _input;
    modifier Input_is_10 {
        require(_input == 10, "Input must be 10");
        _;
    }
    modifier Input_is_X(uint _x) {
        require (_x == _input, "Input must be " + String(_x));
        _;
    }
    constructor (uint _input) {
      _result;
      _input;
      _;
    }
    fallback() external pure Input_is_X(6){
        _;
    }
}
