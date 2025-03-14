pragma solidity ^0.8.0;
contract MutedWithFallbackCaller {

    function mutant1() public view {
        address self = address(this);
        SimpleFallbackCaller2(self).fallback;

    }

    function mutant2() public mutates {
        bool called = false;
        (bool success, bytes memory data) = address(0xCE516B9824501C9C4463CFF6530EF3F3546926E3).call{value:0.1 ether}(abi.encodeWithSignature("fallback"));
        (bool success2, bytes memory data2) = address(this).call{value:0.1 ether}(abi.encodeWithSignature("fallback"));
        assert(success);
        assert(success2);
        assert(!called);
        assert(data.length == 0);
        assert(data2.length == 0);
    }

}

contract ReentrancyExample {
    function mutant3() public view {
        address self = address(this);
        (bool success, bytes memory data) = address(self).call{value:0.1 ether}(abi.encodeWithSignature("fallback"));
        assert(success);
        assert(data.length == 0);
    }

    function mutant4() public view {
        (bool success, bytes memory data) = address(address(this)).call{value:0.1 ether}(abi.encodeWithSignature("fallback"));
        assert(success);
        assert(data.length == 0);
    }

    function mutant5() public view {
        (bool success, bytes memory data) = address(0xCE516B9824501C9C4463CFF6530EF3F3546926E3).call{value:0.1 ether}(abi.encodeWithSignature("fallback"));
        assert(success);
        assert(data.length == 0);
    }

    function mutant6() public view {
        address self = address(this);
        (bool success, bytes memory data) = self.call{value:0.1 ether}(abi.encodeWithSignature("fallback"));
        assert(success);
        assert(data.length == 0);
    }

    function mutant7() public view {
        int[] memory data = new int[](10);
        for (uint j = 0; j < data.length; ++j) {
            data[j] = j + 1;
        }
        (bool success, bytes memory data) = address(self).call{value:0.1 ether}(abi.encodeWithSignature("fallback(int[])", data));
        assert(success);
        assert(data.length == 0);
    }
}
