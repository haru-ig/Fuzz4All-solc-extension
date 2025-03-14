pragma solidity ^0.8.0;
import "./ReturnExample.sol";
contract SemanticReturnExample{
    constructor() public {
        ReturnExample Example = new ReturnExample();
        Example.set(28);
        uint _value = Example.get();
        _value = Example.get();
    }
}

pragma solidity ^0.8.0;
contract CallExample{
    uint internal value;
    function get() public view returns(uint) {
        _value = value;
    }
    function set(uint _value) public {
        value = _value;
    }
    receive() external payable {
        emit EmitExample();

    }
}
pragma solidity ^0.8.0;
import "./CallExample.sol";
contract SemanticsCallExample{
    bool internal accepted;
    constructor() public {
        CallExample Example = new CallExample();
        Example.set(99);
        _Accepted = true;
    }
    event EmitExample();
    function redeem() public {
        accepted = accepted? false : true;
        if (accepted) {
            CallExample Example = new CallExample();
            uint _value = Example.get();
        }
    }
    bool internal _accepted;
}
pragma solidity ^0.8.0;
import "./SemanticsCallExample.sol";
contract Test{
    function callWithFallback() public {
        semanticsCallWithFallback(_Accepted);
        semanticsCallWithFallback(_Rejected);
        semanticsCallWithFallback(_Returned);
        semanticsCallWithFallback(_Success);
        semanticsCallWithFallback(_SuccessNoThrow);
        semanticsCallWithFallback(_Failed);
    }
    semanticsCallWithFallback(bool _value) private view {
        SemanticsCallExample Example = new SemanticsCallExample();
        Example.set(_value);
        bool _accepted = bool(Example.redeem());
        emit EmitExample(_accepted);
    }
    event EmitExample(bool _accepted);
    bool internal _Accepted;
    bool internal _Returned;
    bool internal __Rejected;
    bool internal _Failed;
    bool internal _Success;
    bool internal _SuccessNoThrow;
}
