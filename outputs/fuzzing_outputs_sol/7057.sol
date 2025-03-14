pragma solidity ^0.8.0;
contract MutatedContractWithFallback {
    receive() public payable {
    }
}
contract Caller {

    MutatedContractWithFallback public immutable contract = new MutatedContractWithFallback();

    function callContract() public payable {

        (bool success, ) = contract.call.gas(2, 0, bytes4(keccak256("fallback()"))).value(0.5 ether)("");
        require(success, "");

        bytes memory mem = contract.delegatecall.gas(0, 0, bytes4(keccak256("fallback()")).encodePacked(msg.sender).length);

        require(msg.value == 0.5 ether, "");
    }
}

pragma solidity ^0.8.0;
contract A {
    struct S {
        address _address;
        uint8 _data;
    }
    uint8[100] mem private _f;
    function f() public returns (S[] memory) {
        S[] memory _f;
        S memory s;
        try address(msg.sender).delegatecall(abi.encodeWithSignature("f()")) { } catch (address e) { }
        return _f;
    }
    function f2() public {
        for (uint256 j = 0; j < 100; j++) {
            _f[j] = j + 1;
          }
          if (bool(address(msg.sender).delegatecall(abi.encodeWithSignature("f2()")))) { }
    }
    function foo() public {
        f();
        f2();
    }
}
