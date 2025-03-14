pragma solidity ^0.8.0;
contract invalidEquiv{

}
contract undeclared{
}
contract undeclaredContract{
}
contract undeclaredLocalFunction{
}
contract internalEquiv{
    uint256 private _value;
    constructor() {
            _value = 4;
    }
}
contract publicEquiv{
    uint256 public _value;
    constructor() {
            _value = 4;
    }
}
contract unexportedEquiv{
}
contract externalEquiv{
}
contract restrictedEquiv{
    uint256 private _value;
    constructor() {
            _value = 4;
    }
}
contract contractProtectedFromChanges{

    modifier restricted {
      require(msg.sender == 0xEB827BD7E9EB587227d9e01728e755f73e78f21A,"Contract Must Have Owner");
      _;
    }

    modifier restrictedConstruct{
      require(msg.sender == 0xEB827BD7E9EB587227d9e01728e755f73e78f21A,"Contract Must Have Owner");
      _;
    }

    modifier restrictedFunction{
        _;
    }
    modifier restrictedVariable{
        _;
    }
}
contract unownedConstructor{

}
contract restrictedWithConstructor{
    uint256 public _value;
    constructor() restricted {
            _value = 4;
    }
}
contract unrestricted{
    uint256 private _value;
    constructor() {
            _value = 4;
    }
}
contract forbiddenConstructor{
    uint256 private _value;
    constructor() forbidden {
            _value = 4;
    }
}
contract unrestrictedConstructor {
    uint256 public _value;
    constructor() unrestricted {
            _value = 4;
    }
}
contract unrestrictedFunction {
    function f() public {
        new restrictedEquiv();
    }
}
contract forbiddenFunction {
    function f() public {
        forbiddenEquiv();
    }
}
contract unrestrictedFunctionCall {
    function f() public returns (uint256){
        restrictedEquiv();
        return 4;
    }
}
contract forbiddenFunctionCall {
    function f() public returns (uint256){
        forbiddenEquiv();
        return 4;
    }
}
contract unrestrictedTransactionCall {
    function f() public returns (uint256){
        restrictedEquiv();
        return 4;
    }
}
contract forbiddenTransactionCall {
    function f() public returns (uint256){
        forbiddenEquiv();
        return 4;
    }
}
contract restrictedUnrestricted {
    uint256 private _value;
    function() public restrictedUnrestricted {
        _value =
