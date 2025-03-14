pragma solidity ^0.8.0;
contract Change1 {
    constructor(uint test) public {
    }
    function updateCode() public {
        (bool success,, ) = address(this).call{value: 0}(abi.encodeWithSignature("0x"));
        assert(success);
    }
}

pragma solidity ^0.8.0;
contract Fallback10 {
    uint public fooValue;
    constructor(uint _foo, uint test) public {
        fooValue = _foo;
    }
}

contract Tester {
    function test0() public returns (uint256){
        (bool success,, ) = address(new Fallback7()).call{value: 0}(abi.encodeWithSignature("0x"));
        assert(success);
        return 0;
    }
    function test1() public returns (uint256) {
        (bool success,, ) = address(new Fallback8()).call{value: 0}(abi.encodeWithSignature("0x"));
        assert(success);
        return 0;
    }
    function test2() public {
        Change1.Change1(0).updateCode();
        Address.call{value: 0}(abi.encodeWithSignature("address(uint)",fooValue));
    }
    function test3() public returns (uint256) {
        uint test0Value = test0();
        (bool success,, ) = address(this).call{value: 0}(abi.encodeWithSignature("0x"));
        assert(success);
        (, uint test1Value,,,,) = address(this).call{value: 0}(abi.encodeWithSignature("0x"));
        assert(test1Value == 0);
        return 0;
    }
    function test4() public returns (uint256) {
        uint test0Value = test0();
        (bool success,, ) = address(this).call{value: 0}(abi.encodeWithSignature("0x"));
        assert(success);
        (, uint test1Value,,,,,) = address(this).call{value: 0}(abi.encodeWithSignature("0x"));
        assert(test1Value == 0);
        Fallback10.Fallback10(fooValue, 42) return (2, 1, 3, 7, 15, 31, 63);

    }
}
