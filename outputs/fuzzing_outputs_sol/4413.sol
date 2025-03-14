pragma solidity ^0.8.0;

contract Ether {
    contract B {
        address payable public payableFallbackContract;
        function payableTransfer() public payable {
            require(msg.value == 5 ether);
            payableFallbackContract.transfer(msg.value);
        }
    }
}

contract Mixin {
    address payable fallbackContract;
    constructor(address payable _fallbackContract) {
        fallbackContract = _fallbackContract;
    }

    function callFallbackFunc() internal {
        fallbackContract.transfer(msg.value);
    }


    function payableFail() internal {
        callFallbackFunc();
    }
}

contract ContractWithoutFallbackFunction {
    function callFallbackFunc() internal {
        assert(false);
    }
}


contract Test {
    Ether.B b;

    constructor(address payable _b) {
        b = Ether.B(_b);
    }

    function _assertTransfer(uint256 amount) internal {
        b.payableTransfer{value: amount}();
    }

    function testEtherTransfer(uint256 amount) public {
        address payable fallbackContract = address(b);
        _assertTransfer(amount);
        b.payableFallbackContract.transfer {value: amount}(amount);
        fallbackContract.transfer(amount);
    }

    function fallbackTest() public {
        ContractWithoutFallbackFunction conWithoutFallback = new ContractWithoutFallbackFunction();
        _assertTransfer(msg.value);
        conWithoutFallback.callFallbackFunc{value: msg.value}();
        _assertTransfer(msg.value);

    }

    function testPayableFailure() public {
        Mixin myContract = new Mixin(address(b.payableFallbackContract));
        myContract.payableFail{value: 1 ether}()();
        b.payableFallbackContract.transfer(msg.value - 1);
    }
}
