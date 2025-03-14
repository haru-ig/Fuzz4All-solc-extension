pragma solidity ^0.8.0;
contract FallbackFunctionExample {
    address contractCaller;
    address contractCallerCaller;
    address contractCallerCalleesCaller;
    uint16 constant value = 1;

    function fallback() public payable{
        contractCaller = address(this);
        contractCallerCaller = address(this);
        contractCallerCalleesCaller = address(this);
    }

    function canCall() public virtual override returns (bool) {
        return contractCaller.call{value : value}(abi.encodeWithSignature("()"));
    }

    function canCallReceives() public virtual override returns (bool) {
        bytes memory data = abi.encodeWithSignature("()");
        return contractCaller.call{value : value}(data);
    }

    function canInvoke() public virtual override returns (bool) {
        require(canCall());
        return true;
    }

    function canInvokeReceives() public virtual override returns (bool) {
        require(canCallReceives());
        bytes memory data = abi.encodeWithSignature("()");
        require(contractCallerCalleesCaller.call{value : value}(data));
        return true;
    }

    function canEmit() public {
        emit Log(contractCaller.balance, value);
    }

    function canCallFromFunctionContract() public virtual returns (bool) {
        address func = address(new FuncExample());
        return contractCaller.call{value : value}(abi.encodeWithSignature("()"));
    }

    function canInvokeFromFunctionContract() public virtual returns (bool) {
        address func = address(new FuncExample());
        bytes memory data = abi.encodeWithSignature("()");
        return contractCaller.call{value : value}(data);
        emit Log(contractCaller.balance, value);
    }

    function canInvokeFromFunctionContractReceives() public virtual returns (bool) {
        address func = address(new FuncExample());
        bytes memory data = abi.encodeWithSignature("()");
        require(contractCallerCalleesCaller.call{value : value}(data));
        return true;
    }

    function canEmitFromFunctionContract() public emit {

    }
    function canCallFromFunctionContractWithReturnValues() public virtual returns (bool) {
        address func = address(new FuncExample());
        return contractCaller.callWithReturnValues{value : value}(abi.encodeWithSignature("()"));
    }


    struct Log {
        uint256 value;
        constructor(uint256 _v) {
            value = _v;
        }
    }

    function test() public {
        uint256 a;
        a = func();
    }
}
